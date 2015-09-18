.PHONY: all root user

all: user root

root:
	# Put "compose:menu" into XkbOptions in /etc/X11/xorg.conf.d/10-evdev.conf
	
	# Typographical layouts installation
	#install -m 644 -C x11/input/xkb/symbols/us_typo /usr/share/X11/xkb/symbols/
	#install -m 644 -C x11/input/xkb/symbols/ru_typo /usr/share/X11/xkb/symbols/
	
	# Universalia fonts installation
	#install -m 644 -D -C {x11/fonts/, /usr/share/fonts/universalia}u1.otf
	#install -m 644 -D -C {x11/fonts/, /usr/share/fonts/universalia}u2.otf

user:
	install -m 754 -C user/bin/* ~/bin/
	# TODO: install -m 644 -C env/bash_profile ~/.bash_profile
	install -m 644 -C user/.vimrc ~/.vimrc 
	install -m 644 user/.Xresources ~/.Xresources
	install -m 644 user/.XCompose ~/.XCompose
	
