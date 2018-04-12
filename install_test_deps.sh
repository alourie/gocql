#!/usr/bin/env bash

# This is not supposed to be an error-prone script; just a convenience.

# Install CCM
pip install --user cql PyYAML six
git clone https://github.com/pcmanus/ccm.git
pushd ccm
./setup.py install --user
popd

REPO_SLUG = $1
if [ "$1" != "gocql/gocql" ]; then
    USER=$(echo $REPO_SLUG | cut -f1 -d'/')
    cd ../..
    mv ${USER} gocql
fi
