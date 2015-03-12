#!/bin/sh
set -e
name=`basename $0 .sh`
id=FortAwesome
repo="git@github.com:$id/$name.git"
[ "$1" = ""     ] && echo "$0 version"      && exit 1
[ -e "$name/$1" ] && echo "exist: $name/$1" && exit 1
cd `dirname $0`
git submodule add $repo $name/$1
cd $name/$1
git checkout v$1

