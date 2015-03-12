#!/bin/sh
set -e
name='angular-strap'
repo='git@github.com:mgcrea/angular-strap.git'
[ "$1" = ""     ] && echo "$0 version"      && exit 1
[ -e "$name/$1" ] && echo "exist: $name/$1" && exit 1
cd `dirname $0`
git submodule add $repo $name/$1
cd $name/$1
git checkout v$1
