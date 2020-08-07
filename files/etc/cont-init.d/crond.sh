#!/usr/bin/with-contenv /bin/sh

set -e

crond -f -l 8 -L /var/log/crond.log
