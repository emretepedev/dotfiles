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

# Network Aliasses
alias vpn="sudo openvpn ~/$XDG_CONFIG_HOME/openvpn/vpn.ovpn"
alias ipp="dig +short myip.opendns.com @resolver1.opendns.com"

# Tmuxinator Aliasses
alias mux="tmuxinator"
alias muxs="mux start"
alias muxt="mux stop"
alias muxd="mux delete"
alias muxn="mux new"
alias muxe="mux edit"

# Bundler aliasses
alias be="bundle exec"
alias ber="be rails"
alias berg="ber g"

# Copy Aliasses
alias cprpf="cp -rpf"

# Fuck alias
eval $(thefuck --alias)
alias whoamfckni="neofetch | lolcat -ad 2"

# TTRV
alias ttrvnsfw="cp $XDG_CONFIG_HOME/ttrv/spyworld $XDG_DATA_HOME/ttrv/refresh-token && ttrv"
alias reddit="cp $XDG_CONFIG_HOME/ttrv/ugorur $XDG_DATA_HOME/ttrv/refresh-token && ttrv"

# Nvim
alias vim="nvim"
alias svim="sudoedit"

# Dropdowns
alias fehd="feh --title=mpvfloat"
alias mpvd="mpv --title=mpvfloat"

# New SSL
alias newssl="sudo certbot --authenticator standalone --installer nginx --pre-hook \"systemctl stop nginx.service\" --post-hook \"systemctl start nginx.service\""

# For Remote Server
alias s1="sudo openvpn .config/openvpn/bixos.ovpn"
alias s2="ssh work"
alias s3="sudo killall openvpn"

# Lazygit
alias lg="lazygit"

# Python
alias python="python3"

# Sail
alias sail="./vendor/bin/sail"
alias sa="./vendor/bin/sail artisan"

# Listen & Kill Port
alias xplisten="sudo lsof -iPn | grep"
## xpkill is a function
