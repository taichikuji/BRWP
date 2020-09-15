# BRWP: A Bash Reddit Webhook Pusher!

<p align="center"><img src="media/logo.webp" width="150px" /><br/>
<img src="https://img.shields.io/github/license/taichikuji/BRWP?color=FF3351&logo=github" />
<img src="https://img.shields.io/github/commit-activity/w/taichikuji/BRWP?label=commits&logo=github" />
</p>

## What's the point of this project?

I initially started this project as a fork of my former colleague. He created a [repository](https://github.com/emolina5/reddit-discord-bot) that piqued my interest; A simple script that pushes one ( or two ) reddit posts to discord.

As I wasn't too happy with how the script was handled, I tried fixing it to then push the changes to the main repository. But... It ended up having a complete different structure with the only thing similar being one line of code and the overall idea.

That's when I decided that it'd be a better idea to just make it from scratch as a new repository, and add a few more features as well.

## What does it do?

This is a simple to setup bash script that is meant to be running through crontab, but it can be triggered in any way you want.

When triggered, this script pulls the json data from the selected subreddit, and saves the image urls. Then it pushes those urls to the webhook that you selected.

~~This has only been tested on Discord, so it might need a few changes to make it work on other webhook platforms~~

## How do I make it work?

It's really simple! You only have to modify a few values and you'll be set!

For starters, the values you need to pay attention to are;

- WEBHOOK_URL="<>"
- SUBREDDIT="<>"
- RAND_ARRAY / POST_ARRAY

First, `WEBHOOK_URL` is needed and you'll need to replace <> with the WebHook url provided by the service you use. _In my case I used Discord._

Second, `SUBREDDIT` is needed and you'll need to replace <> with the Subreddit name that you want to pull the images from. _Example: awwnime / memes / github_

Third, `RAND_ARRAY` or `POST_ARRAY` are two values that by default will work just fine. There's a comment inside the BRWP script ( line 17 ) that explains what it means.
