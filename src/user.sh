#!/usr/bin/env bash

# easiest way to detect Vagrant environment
# : is actually a built-in
: VAGRANT_VM=[ $(hostname) == "vagrant" ]

echo "Setting up user data..."

# user.name
echo "Please enter your name [John Doe]: "

if [ "$VAGRANT_VM" == 1 ]; then 
	NAME="vagrant"
else 
	read NAME
fi

git config --global user.name "$NAME"

# user.email
echo "Please enter your email [johndoe@example.com]: "

if [ "$VAGRANT_VM" == 1 ]; then
	EMAIL="vagrant@vagrant.com"
else 
	read EMAIL
fi

git config --global user.email "$EMAIL"

# report
echo "All done, take a look!"
git config -l
