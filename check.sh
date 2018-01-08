#!/bin/bash
myhome=/home/archie
if [ ./_vimrc -ot  $myhome/.vimrc ]
then
    echo "update ./_vimrc"
    cp $myhome/.vimrc ./_vimrc
fi

if [ ./_Xresources -ot  $myhome/.Xresources ]
then
    echo "update ./_Xresources"
    cp $myhome/.Xresources ./_Xresources
fi

if [ ./config.fish -ot  $myhome/.config/fish/config.fish ]
then
    echo "update ./config.fish"
    cp $myhome/.config/fish/config.fish ./config.fish
fi

if [ ./i3_config -ot  $myhome/.config/i3/config ]
then
    echo "update ./i3_config"
    cp $myhome/.config/i3/config ./i3_config
fi

if [ ./i3status_config -ot  $myhome/.config/i3status/config ]
then
    echo "update ./i3status_config"
    cp $myhome/.config/i3status/config ./i3status_config 
fi

if [ ./init.el -ot  $myhome/.emacs/init.el ]
then
    echo "update ./init.el"
    cp $myhome/.emacs/init.el ./init.el
fi

