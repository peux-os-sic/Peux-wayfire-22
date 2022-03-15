#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias fm6000='fm6000 -n -c magenta -r'
fm6000

eval "$(starship init bash)"
