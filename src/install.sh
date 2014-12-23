#!/usr/bin/env bash

echo "Installing Git..."

# Check if Git is already installed on the machine
if [ "$(git --version > /dev/null 2>&1)" == 0 ]; then 

	echo "OK, performing installation..."

	# Install Git with Apt
	sudo apt-get update
	sudo apt-get install git -y

else

	# You already have it installed, come on then!
	echo "Git is already installed on your machine, as I can see."
	git --version	

fi
