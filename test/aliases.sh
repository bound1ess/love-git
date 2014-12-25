#!/usr/bin/env bash

echo "Testing added aliases..."

# workaround to a known bug/unexpected behavior
echo "Please specify the shell congfiguration file path: "

if [ $(hostname) == "vagrant" ]; then
	CONFIG_PATH="/home/vagrant/.bash_aliases"
else
	read CONFIG_PATH
fi

echo "Sourcing $CONFIG_PATH..."
source "$CONFIG_PATH"

alias_exists() {
	if  (($(alias | grep "$1=" | wc -l) == 0)); then
		echo "Alias $1 is not set."
	else
		echo "Alias $1 is set correctly."
	fi
}

alias_exists "gi"
alias_exists "ga"
alias_exists "gs"
alias_exists "gc"
alias_exists "gp"
