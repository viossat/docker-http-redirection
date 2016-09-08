#!/bin/sh
set -e

export TARGET="${TARGET:-example.com}"
export CODE="${CODE:-301}"

# Regex not available with sh
if [ "${TARGET:0:7}" != "http://" ] && [ "${TARGET:0:8}" != "https://" ]; then
  export TARGET="http://${TARGET}"
fi

if [ "${TARGET:$((${#TARGET}-1))}" == "/" ]; then
  export TARGET="${TARGET:0:$((${#TARGET}-1))}"
fi

sed -i "s|TARGET|$TARGET|" "${CONF_PATH}/20-redirection.conf"
sed -i "s|CODE|$CODE|" "${CONF_PATH}/20-redirection.conf"
