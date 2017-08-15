#!/bin/sh

FISH_CONFIG_DIRECTORY=$(pwd)


# create a symlink to `~/.config/fish`
# `~/.config/fish` is a symlink to here
ln -s $FISH_CONFIG_DIRECTORY ~/.config/fish


## Fisherman
# create fisherman plugins directory
mkdir ~/.config/fisherman
# install fisher.fish to ./functions
curl -Lo ./functions/fisher.fish --create-dirs git.io/fisher


# install plugins
fish fisher-install.fish
