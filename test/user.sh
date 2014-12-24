#!/usr/bin/env bash

echo "Checking that user data is set properly..."

# name
if [ ! -z "$(git config --get user.name)" ]; then

	echo "Name is set."

fi

# email
if [ ! -z "$(git config --get user.email)" ]; then

	echo "Email is set."

fi
