#!/bin/sh
sed -e "s|\${PROMETHEUS_USERNAME}|$PROMETHEUS_USERNAME|g" \
    -e "s|\${PROMETHEUS_API_TOKEN}|$PROMETHEUS_API_TOKEN|g" \
    /etc/prometheus/prometheus.template.yml > /etc/prometheus/prometheus.yml

exec prometheus "$@"