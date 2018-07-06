#!/bin/bash

killall openvpn

files=(/home/eino/ovpn_fr/*)
openvpn ${files[RANDOM % ${#files[@]}]}
