# Custom aliases

# Setup
alias sudo="sudo "

alias o="open"
alias oo="open ."
alias e="$EDITOR"
alias g="git"
alias v="vim"
alias x+="chmod +x"


###########################################
# Navigation
###########################################
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias desk="cd ~/Desktop"
alias dots="cd ~/dotfiles"
alias docs="cd ~/Documents"
alias down="cd ~/Downloads"

alias na="vim ~/dotfiles/zsh/aliases.zsh"
alias nla="vim ~/.zsh.local" # New local alias
alias nv="vim ~/dotfiles/shell/vimrc"
alias nz="vim ~/dotfiles/shell/zshrc"

alias hosts='sudo $EDITOR /etc/hosts'


###########################################
# Git
###########################################

alias l="ls -laF"
alias ls="ls -G"
alias la="ls -al"
alias lsd='ls -ld -- */' # only list directories

###########################################
# Git
###########################################

alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gam='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gcl='git clone'
alias gst='git stash'
alias gpu='git pull origin HEAD --prune'

# remove untracked files
alias gcln='git clean -xfd'

# Git logs
alias gl='git log'

# view your last 5 latest commits
alias gl5='git log -5 --pretty --oneline'

# pretty branch status
alias glg='git log --all --graph --decorate --oneline'

# search the commit history for a word and
# display matching commits (glsw [word])
alias glsw='git log -S'

# step through each change, or hunk
alias gap='git add -p'

# Undo a `git push`
alias undopush="git push -f origin HEAD^:master"

# `cd` to Git repo root
alias gr='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'

# quickly get a list of contributors and
# see how many commits each person has
alias gsl='git shortlog -sn'


###########################################
# Other
###########################################

# Download file and save it with filename of remote file
alias get="curl -O -L"

# zshrc config
alias reload="source ~/.zshrc && echo 'Shell config reloaded from ~/.zshrc'"

# Grep
# i = ignore case
# n = line number
# r = recursive search
alias grep='grep -inr --color=auto --exclude-dir={.bzr,.cvs,.git,.hg,.svn}'

# Copy my public key to the pasteboard
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | printf '=> Public key copied to pasteboard.\n'"

alias cask="brew cask"


alias trash="rmtrash" # rmtrash can be installed using brew
alias del="rmtrash"

###########################################
# Make Terminal Better
###########################################
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
