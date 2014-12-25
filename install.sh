#!/usr/bin/env bash

echo "Installing and configuring Git..."

if [ $(hostname) == "vagrant" ]; then
	cd /vagrant/src/
else
	cd src/
fi

source install.sh
source aliases.sh
source connection.sh
source diff.sh
source user.sh

cd -
