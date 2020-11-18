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
export PATH="$PATH:$SPICETIFY_INSTALL"


export EDITOR=vim


export PS1="\[\033[1m\]\u\[\033[0m\]@\[\033[1;36m\]\h\[\033[0m\] \[\033[1;32m\]\W$\[\033[0m\] " 
export PROMPT_COMMAND="pwd > /tmp/whereami"
