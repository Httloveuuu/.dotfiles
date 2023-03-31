#!/bin/bash
# Remove the .vimrc file in home directory
rm -f ~/.vimrc
# Remove the line in .bashrc file in home directory
sed -i 's/source ~\/.dotfiles\/etc\/bashrc_custom//g' ~/.bashrc
# Remove the .TRASH directory inside of home directory
rm -rf ~/.TRASH

