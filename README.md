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

# GERMAN
Dieses Skript fügt den Befehl /creatorcode und die Spalte ccode in die SQL ein. Wenn ein Spieler den Befehl /creatorcode [CODE] eingibt, prüft es, ob ein Code bereits in der Datenbank eingelöst wurde, wenn nicht, wird die Belohnung dem Spieler zugewiesen, beim ersten Download des Skripts ist der Code "NOAH" mit der Belohnung 5000$ und 5 Cola vorhanden. 

# HINZUFÜGEN ODER ENTFERNEN VON BELOHNUNGEN

Um Ihre eigenen Codes hinzuzufügen, müssen Sie die folgenden Schritte befolgen:
1) Öffnen Sie die folgende Datei: Creator-Code\server\command.lua
2) Zwischen Zeile 18 und 19 findest du den Code. Mit ein wenig Erfahrung kannst du ihn mit "elseif" kopieren.

# WEBHOOK UND DEV PING
In "Creator-Code\server\command.lua" Zeile eins der Webhook zum Beispiel 
local webhook "https://discord.com/api/webhooks/YOUR/VERYNICEzWEBHOOK"
Für devping zuerst in discord den Entwicklermodus aktivieren, dann mit der rechten Maustaste auf eine Rolle klicken und die id kopieren z.B. "local devping = "<@&1231231879>".

# COPYRIGHT
Das Skript kann geändert werden.



