#!/usr/bin/env bash

if hash vagrant 2> /dev/null; then

	echo "Creating and booting up the machine..."
	vagrant up

else

	echo "No Vagrant installation found."
	echo "Visit vagrantup.com/downloads.html for detailed instructions."

fi
