#!/bin/bash
set -e -x

mkdir -p ~/.vim/bundle
cd bundle
if [[ ! -d "Vundle.vim" ]]; then
    git clone https://github.com/gmarik/Vundle.vim.git
fi

cd $HOME
if [[ ! -e .vimrc ]]; then
    ln -s .vim/rc .vimrc
fi
if [[ ! -e .vimrc-enc ]]; then
    ln -s .vim/rc-enc .vimrc-enc
fi

