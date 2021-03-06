#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
    google-drive
    spectacle
    seil
    dash
    atom
    intellij-idea
    google-chrome
    glimmerblocker
    hammerspoon
    spotify
)

brew cask install "${apps[@]}"
