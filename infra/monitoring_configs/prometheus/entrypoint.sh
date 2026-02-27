#!/bin/sh
apk add --no-cache gettext 
envsubst < /etc/prometheus/prometheus.template.yml > /etc/prometheus/prometheus.yml
exec prometheus "$@"