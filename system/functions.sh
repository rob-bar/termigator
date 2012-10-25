# Create a new directory and enter it
+() {
  mkdir -p "$@" && cd "$@"
}

-() {
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

# Helper :)
function listf () {
  cat "$HOME/.termieter/system/functions.sh"
}