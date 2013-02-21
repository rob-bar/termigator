#!/bin/sh

# Create a new directory and enter it
function +() {
  mkdir -p "$@" && cd "$@"
}

function -() {
	i=$1
	while [ $i -gt 0 ]; do
		cd ..
		let i--
	done
}

# Copy your public ssh key to remote server for password-less login
# Usage: ssh_sesame 'tortuga'
function ssh_sesame () {
  cat ~/.ssh/id_rsa.pub | ssh $@ "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys";
}

# convert currency from command line
function curr () {
  if [ $1 == 'all' ]; then
    wget -qO- "http://hints.macworld.com/dlfiles/curr_units.txt"; echo ""
  else
    for i in $3
    do
      wget -qO- "http://www.google.com/finance/converter?a=$1&from=$2&to=$i&hl=en" |  sed '/res/!d;s/<[^>]*>//g';
    done
  fi
}

function host-dropbox() {
  ln -s `pwd` "$HOME/Dropbox/Public/www/projects"
}

# google something
function google() {
  read F1
  F=`echo $F1 | sed s/\ /+/g`

  open "http://google.com/search?q=$F"
}

#open hipchat
function hipchat() {
  open "https://proximitybbdo.hipchat.com/chat"
}

#browse local.dev or local.own or local.repo
function browse() {
  if [[ ${PWD} == *PROJECTS* ]]
  then
    open http://local.dev/${PWD##/Users/robbieb/Documents/PROJECTS}$1
  fi

  if [[ ${PWD} == *OWN_PROJECTS* ]]
  then
    open http://own.dev/${PWD##/Users/robbieb/Documents/OWN_PROJECTS}$1
  fi

  if [[ ${PWD} == *REPO* ]]
  then
    open http://local.repo/${PWD##/Users/robbieb/Documents/REPO}$1
  fi
}
