# BRWP: A Bash Reddit Webhook Pusher!

<p align="center"><img src="media/logo.webp" width="150px" /><br/>
<img src="https://img.shields.io/github/license/taichikuji/BRWP?color=FF3351&logo=github" />
<img src="https://img.shields.io/github/commit-activity/w/taichikuji/BRWP?label=commits&logo=github" />
</p>

## What's the point of this project?

This project was initially a fork of [emolina5](https://github.com/emolina5/reddit-discord-bot)'s project, but it ended up being much different, just sharing a few snippets of code and the overall idea.

## What does it do?

It essentially sends a bunch of preconfigured amount of images from Reddit to Discord.

## How do I make it work if I want to run it locally?

It's really simple!

1. First of all, you need to make sure you have either bash or powershell available.

2. Then you need to input the data in the script through the variables;

   ```
   WEBHOOK_URL=""
   SUBREDDIT=""
   ```
3. And that's it! Now to run it, you need to do the following: `bash .\BRWP.sh` on Linux or `powershell.exe -command .\BRWP.ps1` on Windows!