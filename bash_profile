#set the prompt style
#PS1="\[\e[0;32m\]\u:\W \[\e[33m\]\$(git branch  2> /dev/null | grep "^*" | sed -e 's/* \(.*\)/(\1)/')\[\e[0;32m\]\$\[\e[m\] "


#PS1="\[\033[m\]|\[\033[1;35m\]\t\[\033[m\]|\[\e[1m\]\u\[\e[1;36m\]\[\033[m\]@\[\e[1;36m\]\h\[\033[m\]:\[\e[0m\]\[\e[1;32m\]\W \[\e[33m\]\$(git branch  2> /dev/null | grep "^*" | sed -e 's/* \(.*\)/(\1)/')\[\e[0;32m\]\$ \[\e[0m\]"



YELLOW="\[\033[33m\]"
GREEN="\[\033[1;32m\]"
MAGENTA="\[\033[1;35m\]"
CYAN="\[\033[1;36m\]"
CLEAR="\[\033[0m\]"
BOLD="\[\033[1m\]"

gitPromopt () {
 	branch=$(git branch  2> /dev/null | grep "^*" | sed -e 's/* \(.*\)/(\1)/')
	status=$(if [ $(git status -s 2> /dev/null | wc -l) -ne 0 ]; then  echo "*" ; fi;)
	#statusColor=$(if [ $(git status -s 2> /dev/null | wc -l) -eq 1 ]; then  echo "\033[33m" ; else echo "\033[1;32m"; fi;)

	echo "$status$branch"
}

PS1="$CLEAR|$MAGENTA\t$CLEAR|$BOLD\u$CLEAR@$CYAN\h$CLEAR:$GREEN\W $YELLOW\$(gitPromopt)$GREEN\$ $CLEAR"


export PSQL_EDITOR="/usr/bin/nano"
export EDITOR=/usr/bin/nano


#new PHP Path
export PATH=/usr/local/mysql/bin:$PATH
export PATH=/usr/local/php5/bin:$PATH
export PATH="$PATH:/opt/spark2014/bin"



[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


#android stuff for react native
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
