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

# enable programmable completion features (you don't need to enable
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

[[ -f "/home/pth/.local/share/Steam/setup_debian_environment.sh" ]] && source "/home/pth/.local/share/Steam/setup_debian_environment.sh"

export PATH="$HOME/bin:$HOME/bin/bash:/usr/local/cuda-6.0/bin:$PATH"
export PYTHONPATH=$PATH:/home/pth/code/python/libs/GPy
export CLASSPATH=.:/usr/share/java/*:/home/pth/bin/java/junit-4.11.jar:/home/pth/bin/java/hamcrest-core-1.3.jar
export LD_LIBRARY_PATH="/usr/local/cuda-6.0/lib64:/lib"

source ~/.homesick/repos/homeshick/homeshick.sh
