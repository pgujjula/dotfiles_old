# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

eval "$(dircolors /etc/DIR_COLORS)"
export GPG_TTY=$(tty)
