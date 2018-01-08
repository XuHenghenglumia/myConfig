#!/bin/bash
myhome=/home/archie
if [ ./_vimrc -ot  $myhome/.vimrc ]
then
    cp $myhome/.vimrc ./_vimrc
fi

if [ ./_Xresources -ot  $myhome/.Xresources ]
then
    cp $myhome/.Xresources ./_Xresources
fi

if [ ./config.fish -ot  $myhome/.config/fish/config.fish ]
then
    cp $myhome/.config/fish/config.fish ./config.fish
fi

if [ ./i3_config -ot  $myhome/.config/i3/config ]
then
    cp $myhome/.config/i3/config ./i3_config
fi

if [ ./i3status_config -ot  $myhome/.config/i3status/config ]
then
    cp $myhome/.config/i3status/config ./i3status_config 
fi

if [ ./init.el -ot  $myhome/.emacs/init.el ]
then
    cp $myhome/.emacs/init.el ./init.el
fi

