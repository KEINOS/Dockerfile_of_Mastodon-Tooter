[![](https://img.shields.io/docker/cloud/automated/keinos/mastodon-tooter.svg)](https://hub.docker.com/r/keinos/mastodon-tooter "DockerHub Repo") [![](https://img.shields.io/docker/cloud/build/keinos/mastodon-tooter.svg)](https://hub.docker.com/r/keinos/mastodon-tooter/builds "See builds on Docker Hub")

# Dockerfile_of_Tooting-Mastodon

Simple Docker container to toot via sh shell.

This is a sample usage of [keinos/busybox-curl-nkf](https://hub.docker.com/r/keinos/busybox-curl-nkf) base image.

# Usage

Edit the user settings in the [sample.sh](./sample.sh) file then run.

```
$ ./sample.sh 'こんにちは　令和'
```

If success then the JSON responce will retrun.
