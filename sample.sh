#!/usr/bin/env bash

#  User settings
# ---------------
HOST_MASTODON='https://qiitadon.com' # Do not add slash at the end.
TOKEN_MASTODON='xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'

# Endpoint of Mastodon toot API (This is optional)
ENDPOINT_TOOT='/api/v1/statuses'

# Docker image on DockerHub
NAME_IMAGE='mastodon-tooter'

# Set default
VISIBILITY_TOOT=${VISIBILITY:-direct} # public, unlisted, private, direct
STATUS_TOOT=${1:-'Hello World! from API'}

# Create disposable container with env variables and run
docker run --rm \
  -e HOST="${HOST_MASTODON}" \
  -e ENDPOINT="${ENDPOINT_TOOT}" \
  -e VISIBILITY="${VISIBILITY_TOOT}" \
  -e ACCESS_TOKEN="${TOKEN_MASTODON}" \
  -e STATUS="${STATUS_TOOT}" \
  $NAME_IMAGE \
&& echo
