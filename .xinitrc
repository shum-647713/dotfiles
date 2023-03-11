#! /bin/sh

setxkbmap -option ctrl:swapcaps

xrdb $HOME/.Xresources

exec i3
