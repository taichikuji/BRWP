#!/bin/bash
# Bash Reddit Webhook Pusher or BRWP
WEBHOOK_URL="<>"
SUBREDDIT="<>"
IS_INSTALLED=$(dpkg-query -W -f='${Status}' jq 2>/dev/null | grep -c "ok installed")

if [ $IS_INSTALLED == 0 ]; then
  # It's not installed, install
  apt-get install jq -y
fi
# Retrieve data from reddit and saves it as an array
POST_ARRAY=($(curl -s --user-agent 'shell:github (/u/Taichikuji)' "https://www.reddit.com/r/$SUBREDDIT/hot.json?limit=5" | jq -r '.data.children[].data.url_overridden_by_dest'))

# Shuffles array
RAND_ARRAY=$(shuf -e "${POST_ARRAY[@]}")

# Replace ${RAND_ARRAY[@]} with ${POST_ARRAY[@]} to get the regular array list
for LINK in ${RAND_ARRAY[@]}; do
  # To evade getting errors, I make the for loop sleep for half a second each cycle
  sleep .5
  # Checks if there is a null value, and ignores it
  if [ ! $LINK == "null" ]; then
    curl -d "{\"content\": \"$LINK\"}" -H "Content-Type: application/json" "$WEBHOOK_URL"
  fi
done