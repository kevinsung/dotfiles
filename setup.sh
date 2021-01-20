#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# nvim
rm ~/.config/nvim
ln -s ${BASEDIR}/nvim ~/.config/nvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# git
ln -s ${BASEDIR}/gitconfig ~/.gitconfig

# bash
ln -s ${BASEDIR}/bashrc ~/.bashrc
