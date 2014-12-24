#!/usr/bin/env bash

echo "Testing added aliases..."

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
