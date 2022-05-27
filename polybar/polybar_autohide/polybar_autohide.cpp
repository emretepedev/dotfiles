#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sstream>
#include <string>
#include <fstream>
#include <chrono>
#include <thread>

using namespace std;

// CONFIG OPTIONS

// the margin at the top that will trigger polybar showing
#define MARGIN_TOP 1
#define MARGIN_BOTTOM 1079

// the margin that will hide polybar if mouse is moved away
#define MARGIN_HIDE_TOP 100
#define MARGIN_HIDE_BOTTOM 980

// delay for each loop in milliseconds, 
// set lower for more responsiveness, or
// higher for less resource usage
#define LOOP_DELAY 200

// delay for cursor and window positions in milliseconds,
// cursor must be kept for this time at the top,
// or window must be hidden for this time
// before polybar will show
#define CURSOR_WINDOW_DELAY 200
#define CURSOR_WINDOW_DELAY_TOP 2000
#define CURSOR_WINDOW_DELAY_BOTTOM 200

#define DEBUG false

// shell scripts
#define windownumber "xdotool search --all --onlyvisible --desktop $(xprop -notype -root _NET_CURRENT_DESKTOP | cut -c 24-) \"\" 2>/dev/null | tr -d 'Defaulting to search window name, class, and classname'"
#define pointeryposition "xdotool getmouselocation --shell |grep Y= | tr -d 'Y='"
#define show "xdo show -N Polybar"
#define hide "xdo hide -N Polybar"


// read shell command and put in a string string
string getStdoutFromCommand(string cmd) {
    // make some buffers for storing stdout
    string data;
    FILE * stream;
    const int max_buffer = 256;
    char buffer[max_buffer];

    // get stderr too
    cmd.append(" 2>&1");

    // run the command
    stream = popen(cmd.c_str(), "r");

    // append stdout/stderr to buffer
    if (stream) {
        while (!feof(stream))
            if (fgets(buffer, max_buffer, stream) != NULL) 
                data.append(buffer);
        pclose(stream);
    }

    return data;
}

void getPointerY(int& y){
	string result;
	result = getStdoutFromCommand(pointeryposition);

	// convert the y position to int
	int num;
	std::istringstream iss (result);
	iss >> num;
	y = num;
}

void windowPresence(int& windowPresent){
	string result;
	result = getStdoutFromCommand(windownumber);

	// convert just the first string to int
	if (result == "") {
		windowPresent = 0;
	} else {
        int num;
        std::istringstream iss (result);
        iss >> num;
        windowPresent = num;
	}
}

int main(){
	//initialization
	int y = 0, polybarShown = 0, windowPresent = 0;

	//Infinite loop
	while(true){
		// get y pointer
		getPointerY(y);	

        // check for any windows
        windowPresence(windowPresent);

        if (DEBUG) {
            std::cout << "pointer y position: " << y 
                      << ", windowPresent: " << windowPresent 
                      << ", polybarShown: " << polybarShown << std::endl;
        }

        // if no windows, then show polybar
        if (windowPresent == 0) {
            if (! polybarShown) {
                // put a slight delay so this doesn't show
                // when changing i3 workspaces
                this_thread::sleep_for(chrono::milliseconds(CURSOR_WINDOW_DELAY));
                windowPresence(windowPresent);
 
                // if there is still no window
                if (windowPresent == 0) {
                    polybarShown = 1;
                    system(show);
                }
            }
        } else if (! polybarShown) {
            // if there is a window and polybar is hidden
            // we want to unhide it if mouse is at the top
            if (y <= MARGIN_TOP || y >= MARGIN_BOTTOM) {
                // have a slight delay so accidental mouse movements don't trigger
                if (y <= MARGIN_TOP) {
                    this_thread::sleep_for(chrono::milliseconds(CURSOR_WINDOW_DELAY_TOP));
                } else if (y >= MARGIN_BOTTOM) {
                    this_thread::sleep_for(chrono::milliseconds(CURSOR_WINDOW_DELAY_BOTTOM));
                }
                getPointerY(y);
                
                // if mouse is still at top or bottom
                if (y <= MARGIN_TOP || y >= MARGIN_BOTTOM) {
                    polybarShown = 1;
                    system(show);
                }
            }
        } else {
            // else, there is a window, and polybar is shown,
            // we want to hide it if mouse moves away
            if ((y > MARGIN_HIDE_TOP && y < MARGIN_HIDE_BOTTOM) && polybarShown) {
                polybarShown = 0;
                system(hide);
            }
        }

        this_thread::sleep_for(chrono::milliseconds(LOOP_DELAY));
	}
    return 0;
}
