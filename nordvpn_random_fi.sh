#!/bin/bash

killall openvpn

files=(/home/eino/ovpn_fi/*)
openvpn ${files[RANDOM % ${#files[@]}]}
