#!/bin/bash
set -e

# Scaffold boilerplate with given templateName
cd "$PWD/tests"
node scaffold.js "$1"

# Install dependencies
cd "$PWD/builds/$1"
yarn

# Run webpack and build electron
yarn run build

# Clean up current scaffold
cd ..
rm -rf "$1"
