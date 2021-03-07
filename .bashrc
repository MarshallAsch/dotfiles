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
