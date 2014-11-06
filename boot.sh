#!/bin/bash

cd bundle
if [[ ! -d "Vundle.vim" ]]; then
    echo git clone https://github.com/gmarik/Vundle.vim.git
    git clone https://github.com/gmarik/Vundle.vim.git
fi

cd $HOME
if [[ ! -e .vimrc ]]; then
    echo ln -s .vim/rc .vimrc
    ln -s .vim/rc .vimrc
fi
if [[ ! -e .vimrc-enc ]]; then
    echo ln -s .vim/rc .vimrc
    ln -s .vim/rc-enc .vimrc-enc
fi

