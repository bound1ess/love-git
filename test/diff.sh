#!/usr/bin/env bash

echo "Testing external diff viewers..."

if [ $(hostname) == "vagrant" ]; then
	PY_SCRIPT="/home/vagrant/external_diff_viewer.py"
else	
	PY_SCRIPT="/home/$USER/external_diff_viewer.py"
fi

if [ -f "$PY_SCRIPT" ] && [ "$(git config --get diff.external)" == "$PY_SCRIPT" ]; then

	echo "Looks like Git was properly configured to use an external diff viewer!"

else

	echo "Something went terribly wrong - external diff viewer was not added."

fi
