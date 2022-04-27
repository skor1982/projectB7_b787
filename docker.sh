#!/bin/sh
docker run --env site_name=www.yandex.com --mount source=tmp_vol,target=/tmp/test favicon
