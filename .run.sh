#!/bin/bash

echo Stowing...
echo

stow -v $(ls)

echo


echo Instaling tpm...
echo

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo
echo Done
