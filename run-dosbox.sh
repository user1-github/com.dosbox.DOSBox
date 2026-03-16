#!/bin/sh

CONF_PATH="${HOST_XDG_CONFIG_HOME:-${XDG_CONFIG_HOME:-$HOME/.config}}/dosbox/dosbox.conf"

exec dosbox -conf "$CONF_PATH" "$@"
