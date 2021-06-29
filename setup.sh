#!/bin/bash

function error_exit {
    echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')] ERROR: $?"
    exit $?
}

trap error_exit ERR

open powerlevel10k.zip
sleep 3
open zsh-autocomplete.zip
sleep 3
mkdir ~/plugins
mv powerlevel10k ~/plugins
mv zsh-autocomplete ~/plugins
mv .vimrc ~/.vimrc
mv .zshrc ~/.zshrc

echo 'Please restart the terminal to continue setup'