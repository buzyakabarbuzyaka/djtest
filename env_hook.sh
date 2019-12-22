#!/bin/bash
###!!!ЗАПУСК ЧЕРЕЗ SOURCE!!!###

APP_FILE=$(readlink -f "$BASH_SOURCE[0]")

export APP_DIR
APP_DIR="$(dirname "${APP_FILE}")"

while [ -n "$1" ]
do
  case "$1" in
    --test) export APP_TYPE="test"; shift;;
    --prod) export APP_TYPE="production"; shift;;
    -p) export APP_PORT="$2"; shift;;
    *) ;;
  esac
  shift
done

#TODO: Перенести эти дефолтные значения в отдельный конфиг
if ! [[ -v APP_TYPE ]]; then
  export APP_TYPE="test"
fi

if ! [[ -v APP_PORT ]]; then
  export APP_PORT=8000
fi

echo "DIR: ${APP_DIR}"
echo "TYPE: ${APP_TYPE}"
echo "PORT: ${APP_PORT}"