# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
EDITOR="$HOME/.local/bin/nvim"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
eval "$(dircolors /etc/DIR_COLORS)"

GPG_TTY=$(tty)
export GPG_TTY

# Unlimited history
HISTSIZE= 
HISTFILESIZE=

# Record commands in history with timestamp
HISTTIMEFORMAT="%F %T "

# Open man files with nvim
nvman ()
{
  nvim -c ":Man $1 | only"
}
