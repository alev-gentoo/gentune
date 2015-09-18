# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

export EDITOR="gvim --nofork"
export PS1="\[\033[01;33m\]\$(date +%H:%M) $PS1"

# Put your fun stuff here.
