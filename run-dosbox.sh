#!/bin/sh

CONF_PATH="$XDG_CONFIG_HOME/dosbox.conf"

if [ ! -f "$CONF_PATH" ]; then
    echo "Config not found. Generating default at $CONF_PATH..."
    dosbox -eraseconf -writeconf "$CONF_PATH" -exit
fi

exec dosbox -conf "$CONF_PATH" "$@"
