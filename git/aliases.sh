# STATUSSES AND LOGS
alias gst='git status'
alias gl='git log'
alias gls='git log --stat'
alias glo='git log --oneline'
alias glg='git log --graph'
alias glogad='git log --oneline --graph --all --decorate'
alias glui='gitk --all'

# SETTING TO AND REMOVING FROM STAGING AREA
alias ga='git add'
alias gaall='git add *'
alias grm='git remove'
alias grmall='git remove --cached *'

# (LOCAL REPO CHANGING) COMMITTING BRANCHING DIFFING & CHECKOUTING
alias gc='git commit'
alias gb='git branch'
alias gco='git checkout'
alias gd='git diff'

# REMOTE
alias gpull='git pull'
alias gpush='git push'
alias gcl='git clone'
alias gclr='git clone --recursive'

# ARCHIVE EXPORT AND PULL ALL REPOS
alias pall='find ~/Documents/REPO -type d -name .git | xargs -n 1 dirname | sort | while read line; do echo $line && cd $line && git pull; done'
alias gitam='git archive master | tar -x -C $@'