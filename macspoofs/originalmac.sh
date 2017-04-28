#!/usr/bin/env bash

ifconfig wlan0 down

macchanger -p wlan0

ifconfig wlan0 up

