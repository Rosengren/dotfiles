# ALIASES #

# Add new Alias to this file
alias na="vim ~/.oh-my-zsh/custom/aliases.zsh && source ~/.zshrc"

# Vim
alias vim="/usr/local/Cellar/vim/7.4.712_1/bin/vim"
alias nv="vim ~/.vimrc"

# Git
alias gs="git status"
alias gb="git branch"
alias go="git checkout"

alias undo="reset --soft HEAD~1"
alias git="/usr/local/Cellar/git/2.4.6/bin/git"

# Oh My Zsh
alias zshtheme="vim ~/.oh-my-zsh/custom/themes/simpleton.zsh-theme && source ~/.zshrc"
alias zc="vim ~/.zshrc && source ~/.zshrc"

# Grep
# i = ignore case
# n = line number
# r = recursive search
alias grep='grep -inr --color=auto --exclude-dir={.bzr,.cvs,.git,.hg,.svn}'

