#!/bin/sh

# unlink fish
unlink ~/.config/fish

# uninstall fisherman plugins
rm -rf ~/.config/fisherman

# uninstall fisherman
rm -rf ./functions/*
