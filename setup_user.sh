#!/bin/sh
adduser --uid 5001 --no-create-home sengtui
passwd sengtui
adduser --uid 5002 --no-create-home amy
passwd amy
adduser --uid 5003 --no-create-home --shell /dev/null salesdept
passwd salesdept
adduser --uid 5004 --no-create-home --shell /dev/null servicedept
passwd servicedept
adduser --uid 5005 --no-create-home --shell /dev/null idleacc
passwd idleacc

