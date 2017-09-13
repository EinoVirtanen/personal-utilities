```
#!/bin/bash

CURRBRI="$(/usr/lib/unity-settings-daemon/usd-backlight-helper --get-brightness)"
CURRBRI=$(($CURRBRI-1))
/usr/lib/unity-settings-daemon/usd-backlight-helper --set-brightness $CURRBRI
```
I use this in root crontab to reduce my screen backlight by ~10% every minute. (If the screen becomes too dim, I just increase the brightness to a point where I am just able to perform my tasks again.)

- [ ] don't reduce the brightness if the power supply is connected
