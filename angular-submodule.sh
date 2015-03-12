#!/bin/sh
set -e
name=`basename $0 .sh`
[ "$1" = ""     ] && echo "$0 version"      && exit 1
./angular-messages.sh $1
./angular-touch.sh $1
./angular-scenario.sh $1
./angular-sanitize.sh $1
./angular-resource.sh $1
./angular-route.sh $1
./angular-mocks.sh $1
./angular-loader.sh $1
./angular-i18n.sh $1
./angular-cookies.sh $1
./angular-aria.sh $1
./angular-animate.sh $1

