#Announce System
tellraw @a [{"text":"","color":"green"},{"text":"[Data Packs] ","color":"yellow","bold":"true"},{"text":"KWarpNeo - v18.6.5 for Minecraft 1.13 (The Update Aquatic)"}]

# Initialize everything Needed if it hasn't been already
scoreboard objectives add var dummy {"text":"Krissy's Globals"}
execute unless score kwn_init var matches 1 run function kwn:setup
