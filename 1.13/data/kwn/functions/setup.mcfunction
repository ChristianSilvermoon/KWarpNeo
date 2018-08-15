#Announce Setup
tellraw @a [{"text":"","color":"yellow"},{"text":"[KWarpNeo] ","bold":"true","color":"green"},"Running First Time Initialization..."]

#Setup Scoreboards
scoreboard objectives add kwn trigger {"text":"KwarpNeo Triggers"}
scoreboard objectives add WarpX dummy {"text":"KWN Saved X"}
scoreboard objectives add WarpY dummy {"text":"KWN Saved Y"}
scoreboard objectives add WarpZ dummy {"text":"KWN Saved Z"}
scoreboard players set kwn_init var 1
