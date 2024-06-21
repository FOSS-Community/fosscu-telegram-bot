#!/usr/bin/bash

help_msg(){

    tg --replymarkdownv2msg "$RET_CHAT_ID" "$RET_MSG_ID" "*FOSSCU\-K Bot Help*

This bot offers the following commands:

\- /start \: Initializes the bot and provides a welcome message\.
\- /members \: Fetches and displays the list of organization members from GitHub\.
\- /issues \: Displays open issues in the organization\.
\- /prs \: Shows open pull requests in the organization\.
\- /info \: Fetches and displays information about the replied telegram user\.
\- /pfp \: Downloads the profile picture of the replied telegram user\.
\- /iq \: Calculates and displays a fun IQ score\.

Feel free to use these commands to interact with the bot\!

"
}
