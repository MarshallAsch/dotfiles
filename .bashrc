# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source aliases definitions
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export SPICETIFY_INSTALL="/opt/spicetify-cli"
export PATH="$PATH:$SPICETIFY_INSTALL:"
export PATH="$HOME/.cargo/bin:$PATH"

export EDITOR=vim
export HISTSIZE=5000
export HISTTIMEFORMAT="%d/%m/%y %T "

#export PS1="\[\033[1m\]\u\[\033[0m\]@\[\033[1;36m\]\h\[\033[0m\] \[\033[1;32m\]\W$\[\033[0m\] " 
#export PROMPT_COMMAND="pwd > /tmp/whereami"
complete -c aws_completer aws




# PS1 configuration
WHITE="\[\033[1m\]"
CYAN="\[\033[1;36m\]"
GREEN="\[\033[1;32m\]"
YELLOW="\[\033[33m\]"
RESTORE="\[\033[0m\]"

function prompt_command {
    
    #for opening a new terminal in the same dir
    pwd > /tmp/whereami

    BRANCH=$(git branch 2>/dev/null | grep \* | cut -d ' ' -f2)
    STATUS=$(if [[ $(git status -s 2>/dev/null | wc -l) -ne 0 ]]; then echo "*"; fi;)

    GIT_STATUS=""
    if [[ -n "$BRANCH" ]]
    then
        GIT_STATUS=" ($STATUS$BRANCH)"
    fi
}

export PROMPT_COMMAND=prompt_command
export PS1="${WHITE}\u${RESTORE}@${CYAN}\h ${GREEN}\W${YELLOW}\$GIT_STATUS${GREEN}\$ ${RESTORE}"
export PS2="${YELLOW}^_^ ${RESTORE}"

complete -C /usr/bin/terraform terraform

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion




#XDG_DATA_HOME=
#XDG_CACHE_HOME=

# make some applictions useXDG dirs that are not XDG complient
#export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
#export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history
#export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
#export NVM_DIR="$XDG_DATA_HOME"/nvm
#
#nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings
