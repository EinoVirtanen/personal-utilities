#!/bin/bash
if [ `acpi | grep -c Discharging` == 1 ]
then
	xbacklight -dec 5 -time 0
fi
