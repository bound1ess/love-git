#!/usr/bin/env bash

echo "Creating an SSH key and/or enabling HTTPS cache helper..."

: VAGRANT_VM=[ "$USER" == "vagrant" ]

echo "Do you want to enable HTTPS credentials caching? [Y/N]: "

if [ "$VAGRANT_VM" == 1 ]; then
	ANSWER="y"
else
	read ANSWER
fi

if [ "$ANSWER" == "y" ] || [ "$ANSWER" == "Y" ]; then
	
	git config --global credential.helper cache
	echo "Set!"

fi

echo "Do you want to create an SSH key? [Y/N]: "

if [ "$VAGRANT_VM" == 1 ]; then	
	ANSWER="y"
else
	read ANSWER
fi

if [ "$ANSWER" == "y" ] || [ "$ANSWER" == "Y" ]; then

	echo "Please enter your email: "
	
	if [ "$VAGRANT_VM" == 1 ]; then
		EMAIL="vagrant@vagrant.com"
	else
		read EMAIL
	fi

	ssh-keygen -t rsa -C "$EMAIL"
	eval "$(ssh-agent -s)"
	ssh-add ~/.ssh/id_rsa # may not always work

fi
