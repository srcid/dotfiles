#!/usr/bin/env bash

url=$1

if [[ ! $url = http?(s)://* ]]; then
    url=https://youtu.be/$url
fi

yt-dlp \
    -v \
    -x \
    --audio-format opus \
    --audio-quality 0 \
    --embed-metadata \
    --no-playlist \
    -o '~/Music/%(artists.0)s/%(track)s.%(ext)s' $url
