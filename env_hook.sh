#!/bin/bash
###!!!ЗАПУСК ЧЕРЕЗ SOURCE!!!###

APP_FILE=$(readlink -f "$BASH_SOURCE[0]")
export APP_DIR
APP_DIR="$(dirname "${APP_FILE}")"
echo "DIR: ${APP_DIR}"

while [ -n "$1" ]
do
  case "$1" in
    --test) export APP_TYPE="test"; shift;;
    --prod) export APP_TYPE="production"; shift;;
    *) ;;
  esac
  shift
done

if ! [[ -v APP_TYPE ]]; then
  export APP_TYPE="test"
fi


echo "TYPE: ${APP_TYPE}"