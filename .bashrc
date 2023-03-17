# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# added 20110721- BMP
# User specific aliases and functions
umask 0022
export PYTHONSTARTUP=~/.pythonrc

alias ls='ls --color'
alias l='ls --color'
alias lr='ls -ltrh'
alias ..='cd ..'
alias ll='ls -Alrth'
alias la='ls -A'
alias python="python3"

alias cp='cp -i'
alias grep='grep --color=auto'
alias df='df -h'
alias du='du -h'

# typo aliases
alias ks='ls'
alias lks='ls'
alias kls='ls'

alias sharpr='java -mx2000M -jar SHARPR.jar'
alias q='qrsh -l i,h_rt=8:00:00,h_data=8G'

alias qst='qstat -u crrobles'
alias mq='qstat -u crrobles'

calc () {
    bc -l <<< "$@"
}
# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

