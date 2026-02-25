#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'

function cwd {
    pwd | xclip -selection c
}

function mkcd {
    mkdir -p $1
    cd $1
}

PS1='[\u@\h \W]\$ '

export PATH=$PATH:/home/dylan/.spicetify

wallust run -q -p harddark ~/documents/wallpapers/redsun.jpg
pfetch
eval "$(starship init bash)"

