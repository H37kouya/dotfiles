# Git
alias git-branch-delete="git branch --merged|egrep -v '\*|develop|master|main'|xargs git branch -d"

# Docker
alias dc="docker compose"
alias dc-all-remove="docker ps -aq | xargs docker rm"

# Directories
alias dotfiles="cd $DOTFILES"

# Common
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
