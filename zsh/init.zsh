source $ZDOTDIR/variables.zsh

source $ZDOTDIR/antigen.zsh
source $ZDOTDIR/packages.zsh

source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/functions.zsh

source $ZDOTDIR/fzf.zsh

if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte-2.91.sh
   __vte_osc7
fi

autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line

compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
