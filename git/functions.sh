#!/bin/sh
if [[ $CURRENT_SHELL == 'bash' ]]; then
	if [ -f `brew --prefix`/etc/bash_completion ]; then
	  . `brew --prefix`/etc/bash_completion
	fi

	# source $TRM/git/functions/git-completion.sh
fi

function cleangit () {
	find . -name "*.git*" -print0 | xargs -0 rm -rf;
}