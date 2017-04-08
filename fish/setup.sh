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


# create config.fish from template.
# HOMEBREW_GITHUB_API_TOKEN => from prompt
read -s -p 'HOMEBREW_GITHUB_API_TOKEN: ' homebrew_github_api_token;
cat config.fish.template | sed -e s/\$\{HOMEBREW_GITHUB_API_TOKEN\}/$homebrew_github_api_token/g > config.fish
