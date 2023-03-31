#!/bin/bash
# Check the operating system type is 'Linux',
# if not Linux then dump an error message to linuxsetup.log
if [ $(uname) != "Linux" ]
then
	echo "Error: Not Linux." >> linuxsetup.log
	exit
fi

# Create the '.TRASH' directory in home directory if it doesn't exist already
if [ ! -d ~/.TRASH ]
then
	mkdir ~/.TRASH
fi

# If the '.vimrc' file exists in home directory,
# change its name to '.bup vimrc' and dump a message to 'linuxsetup.log'
if [ -f ~/.vimrc ]
then
	mv ~/.vimrc ~/.bup_vimrc
	echo "the current .vimrc file was changed to '.bup vimrc'." >> linuxsetup.log
fi

# Redirect the contents of the etc/vimrc file to '.vimrc' in home directory
cat etc/vimrc > ~/.vimrc
# Add the statement to the end of the .bashrc file located in home directory
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

