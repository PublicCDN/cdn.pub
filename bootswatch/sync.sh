#!/bin/sh
set -e
cd `dirname $0`
######################################################################
exec aws s3 sync ./ s3://cdn.pub/bootstrap/ \
--region ap-northeast-1 \
--size-only \
--cache-control "max-age=315360000" \
--exclude '*' \
--include '*/cerulean/*' \
--include '*/cosmo/*' \
--include '*/cyborg/*' \
--include '*/darkly/*' \
--include '*/flatly/*' \
--include '*/journal/*' \
--include '*/lumen/*' \
--include '*/paper/*' \
--include '*/readable/*' \
--include '*/sandstone/*' \
--include '*/simplex/*' \
--include '*/slate/*' \
--include '*/spacelab/*' \
--include '*/superhero/*' \
--include '*/united/*' \
--include '*/yeti/*' \
--include '*/fonts/*' \
--exclude '*/bower_components/*'
