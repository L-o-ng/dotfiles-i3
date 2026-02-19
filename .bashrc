#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export PATH=$PATH:/home/dylan/.spicetify

wallust run -q -p harddark ~/documents/wallpapers/redsun.jpg
pfetch
eval "$(starship init bash)"

