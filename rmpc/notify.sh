#!/bin/sh
TMP_DIR="/tmp/rmpc"

mkdir -p "$TMP_DIR"

ALBUM_ART_PATH="$TMP_DIR/notification"

DEFAULT_ALBUM_ART_PATH="$TMP_DIR/default.jpg"

if ! rmpc albumart --output "$ALBUM_ART_PATH"; then
	ALBUM_ART_PATH="${DEFAULT_ALBUM_ART_PATH}"
fi

notify-send -i "${ALBUM_ART_PATH}" "$TITLE" "<b>$ARTIST</b> - <i>$ALBUM</i> ($DATE)"
echo "$ARTIST - $TITLE" > "$TMP_DIR/title"
echo "$ALBUM" > "$TMP_DIR/album"

