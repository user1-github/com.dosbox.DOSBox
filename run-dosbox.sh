#!/bin/sh

CONF_PATH="$XDG_CONFIG_HOME/dosbox/dosbox.conf"

if [ -f "$CONF_PATH" ]; then
    exec dosbox -conf "$CONF_PATH" "$@"
else
    exec dosbox "$@"
fi
