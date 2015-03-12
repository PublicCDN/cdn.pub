#!/bin/sh
set -e
cd `dirname $0`
######################################################################
aws s3 sync ./ s3://cdn.pub/bootstrap/ \
--region ap-northeast-1 \
--size-only \
--cache-control "max-age=315360000" \
--exclude '*' \
--include '*/css/*' \
--include '*/fonts/*' \
--exclude '*/src/*'
