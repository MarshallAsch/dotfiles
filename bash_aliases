
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
alias git_log_short="git log --graph --oneline --decorate --all"
alias mkdir="mkdir -p"

alias openPorts="sudo lsof -i | grep LISTEN"
alias ssh_agent='eval "$(ssh-agent -s)"'


#alias minecraft="open ~/Downloads/Feed\ The\ Beast.app/Contents/Java/FTB_Launcher.jar"
alias minecraft="open /Applications/FTBApp.app/Contents/MacOS/JavaApplicationStub"

function cDev() {

    PASSED=$1

    echo ""

    if [[ !  -d $PASSED ]]; then
        echo "$PASSED  must be a dir"
        return 1
    fi

    docker pull marshallasch/cdev

    if [[ $? -ne 0 ]]; then
        echo "Docker not running.... starting...."
        open /Applications/Docker.app
        sleep 5
        docker pull marshallasch/cdev
    fi

    echo "starting c dev environment"

    docker run -v "$PASSED:/root/code" -it marshallasch/cdev /bin/bash
}
