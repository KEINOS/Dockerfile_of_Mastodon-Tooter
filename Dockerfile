# Base image
FROM keinos/busybox-curl-nkf

COPY src/toot.sh /root/toot.sh
ENTRYPOINT /root/toot.sh
CMD ["Hello World!"]
