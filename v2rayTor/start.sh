#!/usr/bin/env bash

tor -f /torrc.default
/usr/bin/v2ray/v2ray -config $CONFIG
