#!/usr/bin/env bash

echo "Testing Git installation..."

if [ "$(git --version > /dev/null 2>&1)" != 0 ]; then 

	echo "Looks like Git was successfully installed!"
	git --version

else

	echo "Something went wrong and Git (probably) was not installed properly."
	
fi
