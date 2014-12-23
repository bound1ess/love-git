#!/usr/bin/env bash

echo "Installing and configuring Git..."

cd ./src/

source install.sh
source aliases.sh
source connection.sh
source diff.sh
source user.sh

cd -
