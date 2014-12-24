#!/usr/bin/env bash

echo "Testing Git installation..."

if hash git 2>/dev/null; then 

	echo "Looks like Git was successfully installed!"
	git --version

else

	echo "Something went wrong and Git (probably) was not installed properly."
	
fi
