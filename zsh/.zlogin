#!/bin/zsh

if [ "$(tty)" = "/dev/tty1" ]; then
	startx $XINITRC
	logout
fi
