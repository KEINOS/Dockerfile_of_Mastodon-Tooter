[![](https://images.microbadger.com/badges/image/keinos/mastodon-tooter.svg)](https://microbadger.com/images/keinos/mastodon-tooter "View image details on microbadger.com") [![](https://img.shields.io/docker/cloud/automated/keinos/mastodon-tooter.svg)](https://hub.docker.com/r/keinos/mastodon-tooter "DockerHub Repo") [![](https://img.shields.io/docker/cloud/build/keinos/mastodon-tooter.svg)](https://hub.docker.com/r/keinos/mastodon-tooter/builds "See builds on Docker Hub")

# Dockerfile To Toot On Mastodon

Simple Docker container to toot via sh shell.

```text
docker pull keinos/mastodon-tooter
```

This is a sample usage of [keinos/busybox-curl-nkf](https://hub.docker.com/r/keinos/busybox-curl-nkf) base image.

- Repositories:
  - Image: https://hub.docker.com/r/keinos/mastodon-tooter @ DockerHub
  - Source: https://github.com/KEINOS/Dockerfile_of_Mastodon-Tooter @ GitHub

# Sample Usage

1. [Download the sample script](https://KEINOS.github.io/Dockerfile_of_Mastodon-Tooter/sample.sh)
2. Get the access token from your Mastodon instance.

    - See: "[How do I get the access token](https://github.com/KEINOS/Mastodon_Simple-Toot-Deleter#how-do-i-get-the-access-token)" @ GitHub

3. Edit the user settings in the [sample.sh](https://github.com/KEINOS/Dockerfile_of_Mastodon-Tooter/blob/master/sample.sh#L5-L6) file.
4. Run the script.

```shellsession
$ # View sample script
$ cat ./sample.sh
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

$
$ # Run script
$ ./sample.sh 'こんにちは　令和'
...
```

If success then the JSON responce will retrun.
