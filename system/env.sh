# if [[ `uname` == 'Darwin' ]]; then
# 	export LS_OPT=''
# elif [[ `uname` == 'Linux' ]]; then
# 	export LS_OPT='--color=auto'
# fi

# export HISTCONTROL=erasedups # Erase duplicates
# export HISTCONTROL=ignoreboth # Ignore same sucessive entries.
# export HISTSIZE=6000 # resize history size

# shopt -s histappend # append to bash_history if Terminal.app quits

# # PATH
# ################################################################################################################

# export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
# export PATH="/usr/local/mysql/bin:$PATH"
# export PATH="/usr/local/share/python:$PATH"

# export PATH

# ################################################################################################################

# export CLICOLOR=1;

# rvm use default >/dev/null


export TRM=$HOME/.termieter
export DROPBOX=$HOME/Dropbox
export CURRENT_SHELL=`ps -p $$ | tail -1 | awk '{print $NF}'`

if [[ $CURRENT_SHELL == '-bash' ]]; then
  export CURRENT_SHELL='bash'
fi

if [[ `uname` == 'Darwin' ]]; then
  export OS='OSX'
else
  export OS='Linux'
fi

################################################################################

export HISTCONTROL=ignoreboth # Ignore same sucessive entries.
export HISTSIZE=15000 # resize history size
export HISTIGNORE="&:[bf]g:exit:pwd:clear:reload\!:[ \t]*"

if [[ $CURRENT_SHELL == 'bash' ]]; then
  shopt -s histappend # append to bash_history if Terminal.app quits
fi

################################################################################

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
# export PATH="/usr/local/share/python:$PATH"
# export PATH="/usr/local/heroku/bin:$PATH"
# export PATH="/usr/local/share/npm/bin:$PATH"

export PATH

################################################################################

export CLICOLOR=1;

export TZ='Europe/Brussels';

export LANGUAGE="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL=

################################################################################

if [[ $OS == 'OSX' ]]; then
export LS_OPT=''
else
export LS_OPT='--color=auto'
fi