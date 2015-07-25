# Path to your oh-my-zsh installation.
export ZSH=/Users/Rosengren/.oh-my-zsh

ZSH_THEME="simpleton"

# _ and - will be interchangeable with autocompletion
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# enable command auto-correction.
ENABLE_CORRECTION="true"

# plugins can be found in ~/.oh-my-zsh/plugins/*
plugins=(git, brew)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
