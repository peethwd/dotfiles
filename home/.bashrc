# ~/.bashrc: executed by bash(1) for non-login shells.
case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize

if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

if [ -f ~/.bash_environment ]; then
    . ~/.bash_environment
fi

# enable programmable completion features (you don't need to enable
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Activate Lmod if installed
if [ -f /usr/share/lmod/lmod/init/bash ]; then 
  source /usr/share/lmod/lmod/init/bash 
  # Set module file dir if it exists
  if [ -d $HOME/modulefiles ]; then 
    module use $HOME/modulefiles
    # Load some modules if relevant
    if [ -d $HOME/modulefiles/libs/CUDA/10.1 ]; then 
      module load libs/CUDA/10.1
    fi
    if [ -d $HOME/modulefiles/dev/cmake ]; then 
      module load dev/cmake
    fi
  fi 
fi

if [ -f ~/.homesick/repos/homeshick/homeshick.sh ]; then
  source ~/.homesick/repos/homeshick/homeshick.sh
fi

if [ -f ~/.rvm/scripts/rvm ]; then
  source ~/.rvm/scripts/rvm
fi

