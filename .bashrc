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
alias gdnvim='nvim --listen /tmp/godot.pipe'

function cwd {
    pwd | xclip -selection c
}

function mkcd {
    mkdir -p "$1"
    cd "$1"
}

function zath {
    zathura "$1" & disown
}

g() {
    case "$1" in
        a) shift; git add "$@" ;;
        c) shift; git commit "$@" ;;
        ps) shift; git push "$@" ;;
        pl) shift; git pull "$@" ;;
        s) shift; git status "$@" ;;
        l) shift; git log --oneline --graph --decorate --all --pretty=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' ;;
        c) shift; git checkout "$@" ;;
        *) git "$@" ;;
    esac
}

PS1='[\u@\h \W]\$ '

export PATH=$PATH:/home/dylan/.spicetify

wallust run -q -p harddark ~/documents/wallpapers/redsun.jpg
pfetch
eval "$(starship init bash)"

