#!/usr/bin/env bash

#  User settings
# ---------------
HOST_MASTODON='https://qiitadon.com' # Do not add slash at the end.
TOKEN_MASTODON='xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'

# Endpoint of Mastodon toot API
ENDPOINT_TOOT='/api/v1/statuses'

# Docker image on DockerHub
NAME_IMAGE='keinos/mastodon-tooter'

# Set default
TOOT_STATUS=${1:-'Hello World! from API'}
TOOT_VISIBILITY=${VISIBILITY:-private} # public, unlisted, private, direct

# Create disposable container and run
docker run --rm \
  -e HOST="${HOST_MASTODON}" \
  -e ENDPOINT="${ENDPOINT_TOOT}" \
  -e STATUS="${TOOT_STATUS}" \
  -e VISIBILITY="${TOOT_VISIBILITY}" \
  -e ACCESS_TOKEN="${TOKEN_MASTODON}" \
  $NAME_IMAGE \
&& echo
