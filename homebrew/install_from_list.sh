#!/bin/bash

cd "$(dirname "${0}")"

cat ./brew_list | xargs brew install
