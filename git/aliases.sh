# VIEW THIS FILE
alias algit='cat ~/.termieter/git/aliases.sh'

# GIT HELP & INIT
alias gi='git init'
alias gh='git help'
alias ghall='git help --all'

# STATUSSES AND LOGS
alias gst='git status'
alias gwc='git whatchanged'
alias gsh='git show'
alias gshb='git show-branch'
alias gl='git log'
alias gls='git log --stat'
alias glo='git log --oneline'
alias glg='git log --graph'
alias glogad='git log --oneline --graph --all --decorate'
# show pretty log with the HASH COMMITTERNAME MESSAGE RELTIME
alias glogap='git log --oneline --graph --all --pretty=format:"%C(yellow)%h%Creset %Cblue%cn%Creset %s %Cred%cr%Creset"'
# show pretty log with the HASH COMMITTERNAME MESSAGE ORTIME
alias glogapd='git log --oneline --graph --all --pretty=format:"%C(yellow)%h%Creset %Cblue%cn%Creset %s %Cred%ci%Creset"'
# show pretty log of all commits yet to be pushed remotely HASH COMMITTERNAME MESSAGE ORTIME
alias globrnp='git log --oneline --branches --not --remotes --pretty=format:"%C(yellow)%h%Creset %Cblue%cn%Creset %s %Cred%ci%Creset"'
alias glui='gitk --all'

# LOW LEVEL PLUMBING COMMANDS
# print out a hash its contents
alias gcfp='git cat-file -p'
# show staged contents' object name in the output
alias glfs='git ls-files -s'
# hash a specific file
alias gho='git hash-object'

# SETTING TO AND REMOVING FROM STAGING AREA
alias ga='git add'
alias ga.='git add .'
# full interactive add
alias gai='git add -i'
# immediate interactive add
alias gap='git add -p'
# removes from the staging area & from the working copy
alias grm='git rm'
# removes only from the staging area
alias grmc='git rm --cached'
alias grmcall='git rm --cached *'
alias gcp='git cherry-pick'

# (LOCAL REPO CHANGING) COMMITTING BRANCHING DIFFING & CHECKING OUT
alias gc='git commit'
alias gcm='git commit -m'
# show local branches
alias gb='git branch'
# show remote branches
alias gbr='git branch -r'
# show all branches
alias gba='git branch -a'
alias gm='git merge'
# checkout commit
alias gco='git checkout'
# checkout commit and make branch
alias gcob='git checkout -b'
# checkout and merge while checking out
alias gcm='git checkout -m'
alias gd='git diff'
# Checks difference between added files and last commmit
alias gdch='git diff --cached HEAD'
alias gs='git stash'

# REMOTE
alias gpl='git pull'
alias gps='git push'
alias gplom='git pull origin master'
alias gpsom='git push origin master'
alias gplod='git pull origin develop'
alias gpsod='git push origin develop'
alias gcl='git clone'
alias gclr='git clone --recursive'
alias gf='git fetch'

# ARCHIVE EXPORT AND PULL ALL REPOS
alias pall='find ~/Documents/REPO -type d -name .git | xargs -n 1 dirname | sort | while read line; do echo $line && cd $line && git pull; done'
alias gam='git archive master | tar -x -C $@'
