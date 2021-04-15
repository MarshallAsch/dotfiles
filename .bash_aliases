
# Put any custom aliases here

alias weather="curl https://wttr.in/?Fp"
alias open="xdg-open"

# aliases for ls
alias ls="ls --color"
alias la="ls -A --color"
alias ll="ls -l --color -h"



alias gh="history | grep "

alias xclip="xclip -sel clip"

alias dotfiles='/usr/bin/git --git-dir=$HOME/Documents/.dotfiles/ --work-tree=$HOME'


# view all the ports that are connected
alias ports="sudo netstat -tulpn"

alias ssh_agent='eval "$(ssh-agent -s)"'


alias venv="source venv/bin/activate"
