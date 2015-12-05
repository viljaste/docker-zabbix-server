#!/usr/bin/env bash

if [ -n "${MYSQL_HOST}" ]; then
  export FACTER_MYSQL_HOST="${MYSQL_HOST}"

  if [ -z "${MYSQL_PORT}" ]; then
    MYSQL_PORT="3306"
  fi

  export FACTER_MYSQL_PORT="${MYSQL_PORT}"
else
  MYSQL_PORT="$(echo "${MYSQL_PORT}" | sed 's/tcp:\/\///')"

  export FACTER_MYSQL_HOST="$(echo "${MYSQL_PORT}" | cut -d ":" -f1)"
  export FACTER_MYSQL_PORT="$(echo "${MYSQL_PORT}" | cut -d ":" -f2)"
fi

if [ -z "${MYSQL_USERNAME}" ]; then
  MYSQL_USERNAME="container"
fi

export FACTER_MYSQL_USERNAME="${MYSQL_USERNAME}"

if [ -z "${MYSQL_PASSWORD}" ]; then
  MYSQL_PASSWORD="container"
fi

export FACTER_MYSQL_PASSWORD="${MYSQL_PASSWORD}"

if [ -z "${TIMEZONE}" ]; then
  TIMEZONE="Etc/UTC"
fi

export FACTER_TIMEZONE="${TIMEZONE}"

if [ -z "${OPENVPN}" ]; then
  OPENVPN="Off"
fi

if [ "${OPENVPN}" == "True" ]; then
  OPENVPN="On"
fi

export FACTER_OPENVPN="${OPENVPN}"

if [ -z "${OPENVPN_DEVICE}" ]; then
  OPENVPN_DEVICE="TAP"
fi

export FACTER_OPENVPN_DEVICE="${OPENVPN_DEVICE}"

export FACTER_OPENVPN_HOST="${OPENVPN_HOST}"

if [ -z "${OPENVPN_PORT}" ]; then
  OPENVPN_PORT="1194"
fi

export FACTER_OPENVPN_PORT="${OPENVPN_PORT}"

export FACTER_OPENVPN_USERNAME="${OPENVPN_USERNAME}"
export FACTER_OPENVPN_PASSWORD="${OPENVPN_PASSWORD}"

export FACTER_OPENVPN_CA_CERTIFICATE="${OPENVPN_CA_CERTIFICATE}"
