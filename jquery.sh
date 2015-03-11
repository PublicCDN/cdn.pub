#!/bin/sh
set -e

[ "$1" = ""      ] && echo "$0 version"       && exit 1
[ -e "jquery/$1" ] && echo "exist: jquery/$1" && exit 1
cd `dirname $0`
git submodule add git@github.com:jquery/jquery.git jquery/$1
cd jquery/$1
git checkout $1

