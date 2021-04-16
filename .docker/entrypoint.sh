#!/usr/bin/env bash

cd /app/src || exit

# Activate venv
. /app/venv/bin/activate

if [ "$COLLECTSTATIC" == "1" ]
then
  echo "Collect staticfiles"
  ./manage.py collectstatic --no-input
fi;

# exec
exec "$@"
