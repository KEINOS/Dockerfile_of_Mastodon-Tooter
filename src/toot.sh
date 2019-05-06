#!/bin/sh

#  Simple Mastodon Status Toot Script.
# ------------------------------------
# You MUST set the following ENV variables before use:
#   - HOST
#   - ENDPOINT
#   - STATUS
#   - VISIBILITY
#   - ACCESS_TOKEN

# Default setting
# ---------------
METHOD=${METHOD:-POST}

# Exit when MUST env variables are not defined
set -u;

# URL Encode the STATUS
STATUS_ESCAPED=$(echo "${STATUS}" | nkf -WwMQ | sed 's/=$//g' | tr = % | tr -d '\n'S)

# URL of API to POST
URL_POST=${HOST}${ENDPOINT}

if
  echo $STATUS_ESCAPED$VISIBILITY$ACCESS_TOKEN \
    | grep '[^a-zA-Z0-9\-\._~%]' > /dev/null;
then
  echo "Invalid character included. Only '[^a-zA-Z0-9\-\._~%]' allowed."
  exit 1
fi

# POST Status to Mastodon API
curl \
  -X $METHOD \
  -d "status=${STATUS_ESCAPED}" \
  -d "visibility=${VISIBILITY}" \
  --header "Authorization: Bearer ${ACCESS_TOKEN}" \
  -sS $URL_POST
