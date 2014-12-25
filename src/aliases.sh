#!/usr/bin/env bash

echo "Adding aliases..."

echo "Please specify the shell configuration file path: "

if [ "$USER" != "vagrant" ]; then
	read CONFIG_PATH
else
	CONFIG_PATH="/home/$USER/.bashrc"
fi

# more to be added
echo "alias gi=\"git init\"" >> "$CONFIG_PATH"
echo "alias ga=\"git add\"" >> "$CONFIG_PATH"
echo "alias gs=\"git status\"" >> "$CONFIG_PATH"
echo "alias gc=\"git commit\"" >> "$CONFIG_PATH"
echo "alias gp=\"git push\"" >> "$CONFIG_PATH" 

echo "Aliases were added to $CONFIG_PATH!"
