# Shortcuts
alias c="clear"
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reloadshell="omz reload"

# Directories
alias dotfiles="z $DOTFILES"
alias work="z $HOME/Work"
alias projects="z $HOME/Code"

# Tmux
alias ta='tmux attach'
alias tl='tmux list-sessions'
alias tn='tmux new-session -s'

# Git
alias gst="git status"
alias gb="git branch --sort=-committerdate"
alias gc="git checkout"
alias gl="git log --oneline --decorate --color"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias uncommit="git reset --soft HEAD^"
alias diff="git diff"
alias force="git push --force-with-lease"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias prune="git fetch --prune"
alias pull="git pull"
alias push="git push"
alias pushup="git push --set-upstream origin"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"
alias gsl="git stash list"
alias brname="git branch -m"
alias nukebranch="git for-each-ref --format '%(refname:short)' refs/heads | grep -v "main" | grep -v "master" | grep -v "staging" | xargs git branch -D"
alias createrepo="gh repo create"
