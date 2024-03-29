
# Put any custom aliases here

alias weather="curl https://wttr.in/?Fp"
alias open="xdg-open"

# aliases for ls
alias ls="ls --color"
alias la="ls -A --color"
alias ll="ls -l --color -h"

alias hgrep="history | grep "

alias xclip="xclip -sel clip"


alias dotfiles='/usr/bin/git --git-dir=$HOME/Documents/.dotfiles/ --work-tree=$HOME'

# set bash completion for the dotfiles command
if [[ -f "/usr/share/bash-completion/completions/git" ]]; then
    source /usr/share/bash-completion/completions/git
    __git_complete dotfiles __git_main
fi

# view all the ports that are connected
alias ports="sudo netstat -tulpn"

alias drives="sudo fdisk -l | sed -e '/Disk \/dev\/loop/,+5d'"
alias space="df -h -T -x squashfs"

alias ssh_agent='eval "$(ssh-agent -s)"'

# set ssh to use a different terminal because alacritty is not installed on remote systems
alias ssh='TERM=xterm-256color ssh'

alias venv="source venv/bin/activate"
alias minecraft="/opt/MultiMC/MultiMC"
alias liquidctl_normal="liquidctl -m pro set sync speed 40 && liquidctl -m H100i set fan speed 20 20 40 70 50 100"
alias liquidctl_max="liquidctl -m pro set sync speed 100 && liquidctl -m H100i set fan speed 100"
alias liquidctl_mid='liquidctl -m pro set sync speed 70 && liquidctl -m H100i set fan speed 60'
