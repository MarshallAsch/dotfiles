
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     lsColor="ls --color";;
    Darwin*)    lsColor="ls -G";;
    *)          echo "UNKNOWN:${unameOut}"
esac
unset unameOut

alias grep="grep --color"
alias fgrep="fgrep --color"
alias egrep="egrep --color"

alias fire="git commit -am "fire" && git push"



if [ -x "$(which atom)" ] ; then alias atom="atom -n"; fi;
if [ -x "$(which open)" ] ; then alias subl="open -a /Applications/Sublime\ Text.app/"; fi;


#default overrides
alias l="$lsColor"
alias ls="$lsColor"
alias la="$lsColor -aF"
alias ll="$lsColor -aFlh"

alias cd..="cd .."

alias git_log="git log --all --graph --decorate"
alias mkdir="mkdir -p"

alias openPorts="sudo lsof -i | grep LISTEN"
alias ssh_agent='eval "$(ssh-agent -s)"'

