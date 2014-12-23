#!/usr/bin/env bash

echo "Running tests..."

cd ./test/

source installation.sh
source aliases.sh
source connection.sh
source diff.sh
source user.sh

cd -
