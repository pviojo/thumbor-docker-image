#!/usr/bin/env bash

LOG_PARAMETER="--log-level ${THUMBOR_LOG_LEVEL:-warning}"
PORT_PARAMETER="--port ${THUMBOR_PORT:-8888}"
CONFIG_PARAMETER="--conf ${THUMBOR_CONFIG:-/app/thumbor.conf}"

exec /usr/local/bin/thumbor --use-environment true ${LOG_PARAMETER} ${PORT_PARAMETER} ${CONFIG_PARAMETER}