#!/usr/bin/env bash

set -e

url="$1"
[[ -z "$url" ]] && exit 1
file="/tmp/${url##*/}"
[[ -z "$file" ]] && exit 1

curl -sLo $file $url
tar -xzv -C / -f $file
rm $file

