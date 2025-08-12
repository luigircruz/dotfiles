# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reloadshell="omz reload"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/opt/homebrew/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias code='open -a /Applications/Visual\ Studio\ Code.app "`pwd`"'
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"
alias randomw="openssl rand -base64 32"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias sites="cd $HOME/Sites"
alias lara="sites && cd laravel/"
alias docs="lara && cd docs/"
alias luigi="sites && cd luigicruz.dev/"
alias pkgs="cd $HOME/Packages"
alias practice="cd $HOME/Practice"
alias tutorials="cd $HOME/Tutorials"
alias work="cd $HOME/Work/"

# Vim
alias vim="nvim"

# Laravel
alias pa="php artisan"
alias mfs="php artisan migrate:fresh --seed"
alias tinker="php artisan tinker"
alias seed="php artisan db:seed"

# PHP
alias cfresh="rm -rf vendor/ composer.lock && composer i"
alias composer="php -d memory_limit=-1 /usr/local/bin/composer"

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"
alias watch="npm run watch"
alias yfresh="rm -rf node_modules/ yarn.lock && yarn install"
alias pfresh="rm -rf node_module/ pnpm-lock.yaml && pnpm install" 
alias nbs="npm run build && npm run start"
alias ybs="yarn build && yarn start"
alias pbs="pnpm build && pnpm start"
alias nfreshall="find . -name "node_modules" -type d -prune -print | xargs du -chs"

# Git
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log --oneline --decorate --color"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias uncommit="git reset --soft HEAD^"
alias diff="git diff"
alias force="git push --force"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
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
alias savePatch="git stash show -p > ~/"Library/Mobile Documents/com~apple~CloudDocs/Code/my-work.patch"
alias applyPatch="git stash apply ~/"Library/Mobile Documents/com~apple~CloudDocs/Coed/my-work.patch"
