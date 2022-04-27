#!/bin/sh
docker run --env site_name=www.yandex.com --mount source=tmp_vol,target=/tmp/test favicon
#--mount source=tmp_vol,target=/tmp/test
#docker run --mount source=tmp_vol,target=/tmp/test favicon www.yandex.com
