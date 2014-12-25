#!/usr/bin/env bash

# easiest way to detect Vagrant environment
# : is actually a built-in
: VAGRANT_VM=[ $(hostname) == "vagrant" ]

echo "Setting up user data..."

# user.name
echo "Please enter your name [John Doe]: "

if [ "$VAGRANT_VM" == 1 ]; then 
	read NAME
else 
	NAME="vagrant"
fi

echo "Your name is $NAME."
git config --global user.name "$NAME"

# user.email
echo "Please enter your email [johndoe@example.com]: "

if [ "$VAGRANT_VM" == 1 ]; then
	read EMAIL
else 
	EMAIL="vagrant@vagrant.com"
fi

echo "Your email is $EMAIL."
git config --global user.email "$EMAIL"

# report
echo "All done, take a look!"
git config -l
