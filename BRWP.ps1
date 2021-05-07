# Powershell Reddit Webhook Pusher or PRWP
$WEBHOOK_URL = "<>"
$SUBREDDIT = "<>"

# Retrieve data from reddit and saves it as an array
$POST_ARRAY = @($(Invoke-RestMethod -Uri "https://www.reddit.com/r/$SUBREDDIT/hot.json?limit=5" -ContentType 'application/json' -Method 'GET').data.children.data.url_overridden_by_dest)
# Shuffles array
$RAND_ARRAY = ($POST_ARRAY | Sort-Object { Get-Random })
# Replace $RAND_ARRAY with $POST_ARRAY to get the regular array list
ForEach ($LINK in $RAND_ARRAY) {
    # To evade getting errors, I make the for loop sleep for half a second each cycle
    Start-Sleep -Seconds 0.5
    # Checks if there is a null value, and ignores it
    $payload = [PSCustomObject]@{ content = $LINK }
    If (!($LINK -eq "null")) {
        Invoke-RestMethod -Uri $WEBHOOK_URL -Body ($payload | ConvertTo-Json) -ContentType "application/json" -Method 'POST'
    }
}