```
#!/bin/bash
PLUG=$(cat /sys/class/power_supply/AC/online)
if [ $PLUG -eq 0 ]; then
	CURRBRI="$(/usr/lib/unity-settings-daemon/usd-backlight-helper --get-brightness)"
	CURRBRI=$(($CURRBRI-1))
	/usr/lib/unity-settings-daemon/usd-backlight-helper --set-brightness $CURRBRI
fi
```
I use this in root crontab to reduce my screen backlight by ~10% every minute. (If the screen becomes too dim, I just increase the brightness to a point where I am just able to perform my tasks again.)

- [x] don't reduce the brightness if the power supply is connected
