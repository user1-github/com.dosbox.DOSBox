#!/bin/sh

CONF_PATH="${HOST_XDG_CONFIG_HOME:-${XDG_CONFIG_HOME:-$HOME/.config}}/dosbox/dosbox.conf"

if [ -f "$CONF_PATH" ]; then
    exec dosbox -conf "$CONF_PATH" "$@"
else
    exec dosbox "$@"
fi
