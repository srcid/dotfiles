#!/usr/bin/env bash

yt-dlp \
    -v \
    -x \
    --audio-format opus \
    --audio-quality 0 \
    --embed-metadata \
    --yes-playlist \
    -o '~/Music/%(artists.0)s/%(playlist)s/%(playlist_index)s - %(track)s.%(ext)s' $1
