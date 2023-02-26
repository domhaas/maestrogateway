#!/usr/bin/with-contenv bashio

MQTT_ip=$(bashio::services mqtt "host")
MQTT_port=1883
MQTT_user=$(bashio::services mqtt "username")
MQTT_pass=$(bashio::services mqtt "password")
TZ="Europe/Berlin"
MCZip="10.10.10.10"

python3 /maestro/maestro.py