#!/bin/sh

CONF_PATH="$XDG_CONFIG_HOME/dosbox/dosbox.conf"

mkdir -p "$(dirname "$CONF_PATH")"

if [ ! -f "$CONF_PATH" ]; then
    echo "Config not found. Generating default at $CONF_PATH..."
    dosbox -eraseconf -writeconf "$CONF_PATH" -exit
fi

exec /app/bin/dosbox -conf "$CONF_PATH" "$@"
