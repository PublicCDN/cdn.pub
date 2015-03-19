#!/bin/sh
set -x
cd `dirname $0`
jquery/sync.sh
bootstrap/sync.sh
Font-Awesome/sync.sh
angular/sync.sh
angular-strap/sync.sh
bootswatch/sync.sh
requirejs/sync.sh
html5shiv/sync.sh
Respond/sync.sh

#
aws s3 sync ./ s3://cdn.pub/ \
--region ap-northeast-1 \
--size-only \
--cache-control "max-age=60" \
--exclude '*' \
--include 'index.html' \
--include 'robots.txt' \
--include 'sitemap.xml' \
 

