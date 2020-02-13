#!/usr/bin/env bash

set -euo pipefail

docker run -i new s6-softlimit true
