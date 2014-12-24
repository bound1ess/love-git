#!/usr/bin/env bash 

echo "Checking that SSH key is set or/and HTTPS cache helper is enabled..."

if [ $(git config --get credential.helper) == "cache" ]; then

	echo "HTTPS credentials caching helper is enabled."

fi

# very primitive check, but will do the trick in 99% cases
if [ -f "/home/$USER/.ssh/id_rsa" ]; then

	echo "SSH key was generated."

fi
