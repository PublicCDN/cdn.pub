#!/bin/sh
set -e
cd `dirname $0`
exec aws s3 sync ./ s3://cdn.pub/jquery/ \
--region ap-northeast-1 \
--dryrun \
--size-only \
--cache-control "max-age=31536000" \
--exclude '*/src/*' \
--exclude '*/test/*' \
--exclude '*/tests/*' \
--exclude '*/build/*' \
--exclude '*/external/*' \
--exclude '*/.git/*' \
--exclude 'README.md' \
--exclude '*/.*' \
--exclude '.git/*' \
--exclude '.*' 


