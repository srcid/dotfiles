#!/usr/bin/env bash

yt-dlp \
    -v \
    -x \
    --audio-format opus \
    --audio-quality 0 \
    --embed-metadata \
    --no-playlist \
    -o '~/Music/%(artists.0)s/%(track)s.%(ext)s' $1
