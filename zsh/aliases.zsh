mcd () {
  mkdir "$1" && cd "$1"
}

# Notification
alias alert="dbus-launch notify-send"

# Update & Upgrade alias
alias upd="sudo apt update && sudo apt list --upgradable"
alias upg="sudo apt upgrade -y"

# Colorfull LS
alias hal="colorls -lA --sd"

# My Git Aliasses
alias gs="git status"
alias gittirgit="git add . && git commit && git push"
alias gittirgit2="~/pushToGitHub/commitToGitHub.sh && ~/pushToGitHub/pushToGitHub.sh && git add . && git commit && git push"
alias gp2="~/pushToGitHub.sh && git push"
alias gcmsg2="~/pushToGitHub/commitToGitHub.sh && git commit -m"

# Tmuxinator Aliasses
alias mux="tmuxinator"
alias muxs="mux start"
alias muxt="mux stop"
alias muxd="mux delete"
alias muxn="mux new"
alias muxe="mux edit"

# Copy Aliasses
alias cprpf="cp -rpf"

# Fuck alias
eval $(thefuck --alias)

# Nvim
alias vim="nvim"

# Lazygit
alias lg="lazygit"
alias ld="lazydocker"

# Python
alias python="python3"

# Sail
alias sail="./vendor/bin/sail"
alias sa="./vendor/bin/sail artisan"

# Listen & Kill Port
alias xplisten="sudo lsof -iPn | grep"
## xpkill is a function
