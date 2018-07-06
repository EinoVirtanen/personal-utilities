#!/bin/bash
if [ `acpi | grep -c Discharging` == 1 ]
then
	DISPLAY=:0 /usr/bin/xbacklight -dec 50 -time 0
fi
