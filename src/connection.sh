#!/usr/bin/env bash

echo "Creating an SSH key and/or enabling HTTPS cache helper..."

echo "Do you want to enable HTTPS credentials caching? [Y/N]: "
read ANSWER

if [ "$ANSWER" == "y" ] || [ "$ANSWER" == "Y" ]; then
	
	git config --global credential.helper cache
	echo "Set!"

fi

echo "Do you want to create an SSH key? [Y/N]: "
read ANSWER

if [ "$ANSWER" == "y" ] || [ "$ANSWER" == "Y" ]; then

	echo "Please enter your email: "
	read EMAIL

	ssh-keygen -t rsa -C "$EMAIL"
	eval "$(ssh-agent -s)"
	ssh-add ~/.ssh/id_rsa # may not always work

fi
