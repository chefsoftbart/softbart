#!/bin/bash

case "$XDG_CURRENT_DESKTOP" in
    "X-Cinnamon")
        echo "Cinnamon tweaks applied"
    EDITOR=xed
    filemanager=nemo
    terminal=gnome-terminal
        ;;
    "MATE")
        echo "MATE tweaks applied"
    EDITOR=pluma
    filemanager=caja
    terminal=mate-terminal
        ;;
    "XFCE")
        echo "XFCE tweaks applied"
    EDITOR=mousepad
    filemanager=thunar
    terminal=xfce4-terminal
        ;;
    *)
        echo "Unknown DE, no tweaks applied"
	EDITOR=nano
	filemanager=""
	terminal=""
        ;;
esac
export EDITOR filemanager terminal
echo EDITOR=$EDITOR
echo filemanager=$filemanager
echo terminal=$terminal
