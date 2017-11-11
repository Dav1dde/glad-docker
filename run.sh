#!/bin/bash

cd glad-web/

if [[ -n "$SERVER_NAME" ]]; then
    echo "SERVER_NAME = '$SERVER_NAME'" > local_config.py
fi

python -m gladweb init

exec gunicorn -c gunicorn.config.py 'gladweb:create_application(debug=False, verbose=None)' "$@"

