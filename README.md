# Fivem-Creator-Code
This script adds the command /creatorcode and the column ccode to be added in the SQL. When a player enters the command /creatorcode [CODE], it checks if a code has already been redeemed in the database, if not, the reward is assigned to the player, the first time the script is downloaded the code "NOAH" is present with the reward 5000$ and 5 cola. 

# ADD OR REMOVE REWARDS

To add your own codes, the following steps must be followed:
1) Open the following file: Creator-Code\server\command.lua
2) Between line 18 and 19 you will find the code. with a little experience you can copy it with "elseif".

# WEBHOOK AND DEV PING
In "Creator-Code\server\command.lua" line one the webhook for example 
local webhook "https://discord.com/api/webhooks/YOUR/VERYNICEzWEBHOOK"
For devping, first activate the developer mode in discord, then right-click on a role and copy id for example "local devping = "<@&1231231879>".

# COPYRIGHT
The script may be modified.
