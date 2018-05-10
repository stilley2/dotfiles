#!/bin/bash

set -u
set -e

function conditional_link {
	if [ -h "$2" ]
	then

}
ln -s -f init.vim ~/.config/nvim/init.vim
ln -s -f init.vim ~/.config/nvim/init.vim

- link:
        ~/.config/nvim/init.vim: init.vim
        ~/.config/nvim/after : after
        ~/.inputrc: .inputrc
        ~/.screenrc: .screenrc
        ~/.bash_aliases: .bash_aliases
        ~/.vimrc: .vimrc
        .config/i3/config: i3config
        .Xresources: .Xresources
