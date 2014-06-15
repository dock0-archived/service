#!/usr/bin/env bash

set -e

package="$1"
[[ -z "$package" ]] && exit 1

git clone git://github.com/akerl/$package /opt/$package
cd /opt/$package
make install

