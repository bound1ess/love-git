#!/usr/bin/env bash

echo "Creating an SSH key and/or enabling HTTPS cache helper..."

: VAGRANT_VM=[ $(hostname) == "vagrant" ]

echo "Do you want to enable HTTPS credentials caching? [Y/N]: "

if [ "$VAGRANT_VM" == 1 ]; then
	read ANSWER
else
	ANSWER="y"
fi

if [ "$ANSWER" == "y" ] || [ "$ANSWER" == "Y" ]; then
	
	git config --global credential.helper cache
	echo "Set!"

fi

echo "Do you want to create an SSH key? [Y/N]: "

if [ "$VAGRANT_VM" == 1 ]; then	
	read ANSWER
else
	ANSWER="n"
fi

if [ "$ANSWER" == "y" ] || [ "$ANSWER" == "Y" ]; then

	echo "Please enter your email: "
	read EMAIL

	ssh-keygen -t rsa -C "$EMAIL"
	eval "$(ssh-agent -s)"
	ssh-add ~/.ssh/id_rsa # may not always work

fi
