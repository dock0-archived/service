#!/usr/bin/env bash

set -e

package="$1"
[[ -z "$package" ]] && exit 1

cd /opt/$package
make install

