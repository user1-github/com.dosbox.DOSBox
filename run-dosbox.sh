#!/bin/sh
CONF="$HOME/.config/dosbox/dosbox.conf"

[ -f "$CONF" ] || dosbox -writeconf "$CONF"

exec dosbox -conf "$CONF" "$@"
