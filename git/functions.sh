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

function cleancached () {
cat .gitignore | egrep -v "^#|^$" | while read line; do
  if [ -n "$line" ]; then
    OLD_IFS=$IFS; IFS=""
    for ignored_file in $( git ls-files "$line" ); do
      git rm --cached "$ignored_file"
    done
    IFS=$OLD_IFS
  fi
done
}
