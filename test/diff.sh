#!/usr/bin/env bash

echo "Testing external diff viewers..."

PY_SCRIPT="~/external_diff_viewer.py"

if [ -f "$PY_SCRIPT" ] && [ $(git config --get diff.external) == "$PY_SCRIPT" ]; then

	echo "Looks like Git was properly configured to use an external diff viewer!"

else

	echo "Something went terribly wrong - external diff viewer was not added."

fi
