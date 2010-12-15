# check for an interactive session
[ -z "$PS1" ] && return

source /home/nebu/.profile

# prevent side effects with env
function env() {
  exec /usr/bin/env "$@" | grep -v ^LESS_TERMCAP_
}

PS1='\[\e[37;1m\]\u\[\e[37;1m\]@\[\e[37;1m\]\h:\[\e[37;1m\]\w >\[\e[0m\] '

alias diff='colordiff'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias ll='ls -al'
eval $(dircolors -b)

alias update="yaourt -Syu --aur"
alias install="yaourt -S"

alias bye="sudo shutdown -h 0"
alias see-you="sudo shutdown -r 0"
alias exit="clear; exit"
alias x="startx"

alias hist='history | grep $1'
alias openports='netstat --all --numeric --programs --inet'

# cd
alias home='cd ~'
alias back='cd $OLDPWD'
alias cd..='cd ..'
alias ..='cd ..'

extract () {
        if [ -f $1 ]; then
                case $1 in
                        *.tar.bz2)              tar xjf $1                      ;;
                        *.tar.gz)               tar xzf $1                      ;;
                        *.bz2)                  bunzip2 $1                      ;;
                        *.rar)                  rar x $1                        ;;
                        *.gz)                   gunzip $1                       ;;
                        *.tar)                  tar xvf $1                      ;;
                        *.tbz2)                 tar xjf $1                      ;;
                        *.tgz)                  tar xzf $1                      ;;
                        *.zip)                  tar zxf $1                      ;;
                        *.z)                    uncompress $1           ;;
                        *)                              echo "'$1' cannot be extracted." ;;
                esac
        else
                echo "'$1' is not a valid file."
        fi
}


