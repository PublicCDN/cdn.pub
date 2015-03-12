#!/bin/sh
set -e
cd `dirname $0`
######################################################################
exec aws s3 sync ./ s3://cdn.pub/jquery/ \
--region ap-northeast-1 \
--size-only \
--cache-control "max-age=31536000" \
--exclude '*' \
--include '*/dist/*' \
--exclude '*/src/*'

