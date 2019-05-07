[![](https://images.microbadger.com/badges/image/keinos/mastodon-tooter.svg)](https://microbadger.com/images/keinos/mastodon-tooter "View image details on microbadger.com") [![](https://img.shields.io/docker/cloud/automated/keinos/mastodon-tooter.svg)](https://hub.docker.com/r/keinos/mastodon-tooter "DockerHub Repo") [![](https://img.shields.io/docker/cloud/build/keinos/mastodon-tooter.svg)](https://hub.docker.com/r/keinos/mastodon-tooter/builds "See builds on Docker Hub")

# Dockerfile To Toot On Mastodon

**Simple Docker container to toot**. This is a sample usage of [keinos/busybox-curl-nkf](https://hub.docker.com/r/keinos/busybox-curl-nkf) base image.

```text
docker pull keinos/mastodon-tooter
```

- REPOs:
  - Image: https://hub.docker.com/r/keinos/mastodon-tooter @ DockerHub
  - Source: https://github.com/KEINOS/Dockerfile_of_Mastodon-Tooter @ GitHub

- Usage:

  ```bash
  docker run --rm \
    --env HOST="https://qiitadon.com" \
    --env VISIBILITY="private" \
    --env ACCESS_TOKEN="[Your Access Token Here]" \
    --env STATUS="こんにちは　Mastodon" \
    keinos/mastodon-tooter
  ```

  - Env variables you MUST set:
    - `HOST`: The host of your Mastodon instance. Don't include a slash at the end.
    - `VISIBILITY`: Visibility of the toot(status). `public`, `unlisted`, `private` and `direct` are available.
    - `ACCESS_TOKEN`: Your access token generated from your instance.
      - REF: See: "[How do I get the access token](https://github.com/KEINOS/Mastodon_Simple-Toot-Deleter#how-do-i-get-the-access-token)" @ GitHub
    - `STATUS`: Your toot content.
  - OPTIONAL env variables:
    - `METHOD`: Method to use when API request. Default is `POST`.
    - `ENDPOINT`: Endpoint of the API in your instance. Default is `/api/v1/statuses`.
