#!/bin/sh
set -e
cd `dirname $0`
######################################################################
exec aws s3 sync ./ s3://cdn.pub/requirejs/ \
--region ap-northeast-1 \
--size-only \
--cache-control "max-age=315360000" \
--exclude '*' \
--include '*/require.js'

