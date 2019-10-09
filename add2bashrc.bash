# Enable tab completion
source ~/git-completion.bash

# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

# Change command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
# '\w' currrent path
export PS1="$yellow\d \t \u@\h$green\$(__git_ps1)$purple \w \n$ $reset"

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
