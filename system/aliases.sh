# VIEW THIS FILE
alias alsys='cat ~/.termieter/system/aliases.sh'

# paths
################################################################################################################
alias projects='cd ~/Documents/PROJECTS/'
alias own='cd ~/Documents/OWN_PROJECTS/'
alias temp='cd ~/Documents/TEMP/'
alias expo='cd ~/Documents/EXPORTS/'
alias files='cd ~/Documents/PROX_FILES/'
alias repo='cd ~/Documents/REPO/'

################################################################################################################
alias mkassets='mkdir css img font download js img/layout img/icon js/lib css/lib'

################################################################################################################
alias reload!='. ~/.bash_profile'
alias termigator='cd ~/.termieter'

################################################################################################################
alias vimconf='cd ~/.vim'
alias v='vim .'

################################################################################################################
alias ls='ls $LS_OPT' # long list, excludes dot files
alias ll='ls $LS_OPT -GlA' # long list all, includes dot files
alias l='ls $LS_OPT -loAF'
alias cwd='pwd | pbcopy' # copy current working directory to clipboard
alias md='mkdir'

################################################################################################################
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'" # Get readable list of network IPs
alias ip='dig +short myip.opendns.com @resolver1.opendns.com' # my ip
alias flushdns='echo "» dscacheutil -flushcache"; dscacheutil -flushcache' # Flush DNS cache

################################################################################################################
alias gzip='echo "» gzip -9n"; gzip -9n' # set strongest compression level as ‘default’ for gzip
alias ping='echo "» pint -c 5"; ping -c 5' # ping 5 times ‘by default’
alias hosts='sudo subl /private/etc/hosts'

################################################################################################################
alias hist='history | grep "$@"'
alias hist-sort='history | cut -c 8- | sort | uniq -c | sort -rn'

################################################################################################################
# Clear temp files for a faster Terminal
alias fasterfaster='sudo rm -rf /private/var/log/asl/*; sudo rm -rf /var/mail/*'

# Remove spaces and replace by a dash
alias remove-spaces='for file in *; do mv "$file" "${file// /-}"; done'

# Trash a file from your Terminal
alias trash='mv "$@" ~/.Trash/'

# SSH background color
alias ssh='echo "» ssh-host-color-iterm"; ~/.termieter/system/functions/ssh-host-color-iterm'

################################################################################################################
alias codekit='open -a ~/Applications/CodeKit.app $(pwd)'
# Show hidden files in finder
alias showhiddenfiles='defaults write com.apple.Finder AppleShowAllFiles TRUE; killall Finder'

# Hide hidden files in finder
alias hidehiddenfiles='defaults write com.apple.Finder AppleShowAllFiles FALSE; killall Finder'

################################################################################################################