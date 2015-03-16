#!/bin/sh
set -e
cd `dirname $0`
cd ..
######################################################################
exec aws s3 sync ./ s3://cdn.pub/ \
--region ap-northeast-1 \
--size-only \
--cache-control "max-age=315360000" \
--exclude '*' \
--include 'angular/*' \
--include 'angular-messages/*' \
--include 'angular-touch/*' \
--include 'angular-scenario/*' \
--include 'angular-sanitize/*' \
--include 'angular-resource/*' \
--include 'angular-route/*' \
--include 'angular-mocks/*' \
--include 'angular-loader/*' \
--include 'angular-i18n/*' \
--include 'angular-cookies/*' \
--include 'angular-aria/*' \
--include 'angular-animate/*' \
--exclude 'angular/sync.sh'
