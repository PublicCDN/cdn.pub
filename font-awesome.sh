#!/bin/sh
set -e
name='font-awesome'
repo='git@github.com:FortAwesome/Font-Awesome.git'
[ "$1" = ""     ] && echo "$0 version"      && exit 1
[ -e "$name/$1" ] && echo "exist: $name/$1" && exit 1
cd `dirname $0`
git submodule add $repo $name/$1
cd $name/$1
git checkout v$1

