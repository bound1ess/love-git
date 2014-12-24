#!/usr/bin/env bash

echo "Adding aliases..."

echo "Please specify the shell configuration file path: "
read CONFIG_PATH

# more to be added
cat "alias gi=\"git init\"" >> "$CONFIG_PATH"
cat "alias ga=\"git add\"" >> "$CONFIG_PATH"
cat "alias gs=\"git status\"" >> "$CONFIG_PATH"
cat "alias gc=\"git commit\"" >> "$CONFIG_PATH"
cat "alias gp=\"git push\"" >> "$CONFIG_PATH" 

echo "Aliases were added to $CONFIG_PATH!"
