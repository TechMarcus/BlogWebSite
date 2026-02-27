#!/bin/sh
apk add --no-cache gettext  # if it's alpine-based
envsubst < /etc/prometheus/prometheus.template.yml > /etc/prometheus/prometheus.yml
exec prometheus "$@"