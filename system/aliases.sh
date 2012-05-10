# paths
################################################################################################################
alias projects='cd ~/Doucments/PROJECTS/'
alias own='cd ~/Documents/OWN_PROJECTS/'
alias temp='cd ~/Documents/TEMP/'
alias expo='cd ~/Documents/EXPORTS/'
alias files='cd ~/Documents/PROX_FILES/'
alias repo='cd ~/Documents/REPO/'


alias reload!='. ~/.bash_profile'
alias termieter='cd ~/.termieter'
alias vim='cd ~/.vim'
################################################################################################################

alias ..='cd ..'
alias ...='cd .. ; cd ..'

alias ls='ls $LS_OPT' # long list, excludes dot files
alias ll='ls $LS_OPT -GlA' # long list all, includes dot files
alias l='ls $LS_OPT -AFo'

alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'" # Get readable list of network IPs
alias ip='dig +short myip.opendns.com @resolver1.opendns.com' # my ip
alias flushdns='echo "» dscacheutil -flushcache"; dscacheutil -flushcache' # Flush DNS cache

alias gzip='echo "» gzip -9n"; gzip -9n' # set strongest compression level as ‘default’ for gzip
alias ping='echo "» pint -c 5"; ping -c 5' # ping 5 times ‘by default’

alias cwd='pwd | pbcopy' # copy current working directory to clipboard

alias hosts='sudo vim /private/etc/hosts'

alias hist='history | grep "$@"'
alias hist-sort='history | cut -c 8- | sort | uniq -c | sort -rn'

alias v='vim .'

# Clear temp files for a faster Terminal
alias fasterfaster='sudo rm -rf /private/var/log/asl/*; sudo rm -rf /var/mail/*'

# Remove spaces and replace by a dash
alias remove-spaces='for file in *; do mv "$file" "${file// /-}"; done'

# Trash a file from your Terminal
alias trash='mv "$@" ~/.Trash/'

# SSH background color
alias ssh='echo "» ssh-host-color-iterm"; ~/.termieter/system/functions/ssh-host-color-iterm'

