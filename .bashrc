# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$HOME/.local/bin:$HOME/bin:$PATH"
EDITOR="nvim"
export PATH

# Open manpages with neovim
export MANPAGER='nvim +Man!'
export MANWIDTH=999

# FZF config
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git --ignore .mozilla --ignore .cache --ignore .config --ignore .local -l -g ""'

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases
alias ls='ls --color=auto'

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

# For Ubuntu development
export DEBFULLNAME="Preetham Gujjula"
export DEBEMAIL="ubuntu@mail.preetham.io"
