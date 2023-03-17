# Source global definitions
if [ -f /etc/zshenv ]; then
    source /etc/zshenv
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

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
