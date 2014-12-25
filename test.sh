#!/usr/bin/env bash

echo "Running tests..."

if [ $(hostname) == "vagrant" ]; then
	cd /vagrant/test/
else
	cd test/
fi

source installation.sh
source aliases.sh
source connection.sh
source diff.sh
source user.sh

cd -
