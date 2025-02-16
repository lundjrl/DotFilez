#!/bin/sh

URL="https://www.reddit.com/message/unread/.json?feed=ff63a23289b049cba7b735b4f8c6e781481b92c2&user=jamcoding"
USERAGENT="~/.config/polybar/scripts/notification-reddit:v1.0 u/jamcoding"

notifications=$(curl -sf --user-agent "$USERAGENT" "$URL" | jq '.["data"]["children"] | length')

if [ -n "$notifications" ] && [ "$notifications" -gt 0 ]; then
    echo " $notifications"
else
    echo ""
fi
