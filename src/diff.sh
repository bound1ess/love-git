#!/usr/bin/env bash

echo "Configuring an external diff viewer..."

: PY_SCRIPT="~/external_diff_viewer.py"

: TEMPLATE="
#!/usr/bin/env python3
from subprocess import Popen
from sys import argv

# By default, it is configured to use Meld as the diff viewer of choice.
Popen([\"meld\", argv[2], argv[5]], ).wait()
"

cat "$TEMPLATE" > "$PY_SCRIPT"
git config --global diff.external "$PY_SCRIPT"

echo "Now you can edit $PY_SCRIPT to add support for your favorite diff viewer."
