# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# Custom prompt
export PS1="\[\e[0;34m\][\[\e[0;37m\]\u\[\e[m\]@\[\e[0;37m\]\h \[\e[2;52m\]\w\[\e[0;34m\]]\$ \[\e[m\]"

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# HISTORY
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1).
# don't put duplicate lines or lines starting with space in the history.
# append to the history file, don't overwrite it
HISTSIZE=2000
HISTFILESIZE=1000
HISTCONTROL=ignoreboth
shopt -s histappend

# update the values of LINES and COLUMNS after each command if necessary.
shopt -s checkwinsize

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
