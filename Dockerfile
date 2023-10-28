ARG IMAGE=ghcr.io/gotify/server:2.4.0
FROM $IMAGE
ENV GOTIFY_PLUGINSDIR=/app/plugins
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
