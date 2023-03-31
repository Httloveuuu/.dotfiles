# My Dotfiles
These are my dotfile configuration files for different software in Bash.

## ./etc/vimrc
This is my custom .vimrc configuration for Vim.

## ./etc/bashrc_custom
This is my custom .bashrc configuration for Bash.

## ./.gitignore
This file tells Git to ignore certain files or directories.

## ./bin/linux.sh
This is a script to do custom configuration and do followings:
- Create directory .TRASH in home directory if not exists.
- Rename .vimrc to .bup_vimrc if exists in home directory and dump a message to linuxsetup.log.
- Redirect contents of the etc/vimrc file to .vimrc in home directory.
- Add the statement 'source ~/.dotfiles/etc/bashrc custom' to the end of the .bashrc in home directory.

## ./bin/cleanup.sh
This is script to reverse anything that was done in the 'linux.sh' script:
- Remove the .vimrc file in home directory.
- Remove the line 'source ~/.dotfiles/bashrc custom' in .bashrc in home directory.
- Remove the .TRASH directory inside of home directory.

## ./Makefile
This file contains two targets: linux and clean, do followings:
- linux target depends on target clean then will run the './bin/linux.sh' script.
- clean target will run the './bin/cleanup.sh' script.

