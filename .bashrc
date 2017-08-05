# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export PATH=/usr/local/cuda-8.0/bin${PATH:+:${PATH}}

export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64 #\${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}


#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/aemadzadeh/Perforce/aemadzadeh_aemadzadeh_378/sw/gpgpu/MachineLearning/DIT/externals/cudnn/x86_64/6.0/cuda-8.0/lib64:.:/home/aemadzadeh/Perforce/aemadzadeh_aemadzadeh_378/sw/gpgpu/MachineLearning/DIT/externals



# Enable tab completion
source ~/git-completion.bash

# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"
yellow="\[\033[01;33m\]"

# Change command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$yellow\d \t \u@\h$green\$(__git_ps1)$blue \W $ $reset"

export PATH=$PATH:~/Perforce
export P4PORT=p
export P4USER=aem
export P4CLIENT=aem
#export TRUNK=~/p4/sw/gpgpu/MachineLearning/DIT/trunk
export TRUNK=/home/aem
export P4EDITOR=gvim
export LD_LIBRARY_PATH=$TRUNK/build-cuda-8.0/x86_64:$LD_LIBRARY_PATH:/home/aem/lib64:.
export P4ROOT=/home/ae
alias mk="make -j12"

export PYTHONPATH="/usr/local/lib/python2.7/site-packages"


# added by Anaconda2 4.3.0 installer
#export PATH="/home/aemadzadeh/anaconda2/bin:$PATH"
export DIT="/home/ae/DIT"
export PATH="/home/aemadzadeh/eclipse:$PATH"
