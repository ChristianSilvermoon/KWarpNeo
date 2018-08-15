#-------------------------------------------------------
# Misc
#-------------------------------------------------------

# Floor Crafting
execute run function kwn:floor_crafting/tick

#-------------------------------------------------------
# Coordinate Saver
#-------------------------------------------------------

# On Success
execute as @e[nbt={CustomName:"{\"color\":\"yellow\",\"text\":\"Coordinate Saver\"}"}] at @s if entity @s[nbt={Dimension:0}] run function kwn:coordinate_saver/success

# On Failure
execute as @e[nbt={CustomName:"{\"color\":\"yellow\",\"text\":\"Coordinate Saver\"}"}] at @s unless entity @s[nbt={Dimension:0}] run function kwn:coordinate_saver/failure

#-------------------------------------------------------
# Warp Placer
#-------------------------------------------------------

# On Success
execute as @e[nbt={CustomName:"{\"color\":\"yellow\",\"text\":\"Warp Placer\"}"}] at @s if entity @s[nbt={Dimension:0}] run function kwn:warp_placer/success

# On Failure
execute as @e[nbt={CustomName:"{\"color\":\"yellow\",\"text\":\"Warp Placer\"}"}] at @s unless entity @s[nbt={Dimension:0}] run function kwn:warp_placer/failure

# Armor Stand
execute as @e[tag=Warp,tag=Phase1] at @s run function kwn:warp_placer/armor_stand

#-------------------------------------------------------
# Warp Remover
#-------------------------------------------------------
# On Success
execute as @e[nbt={CustomName:"{\"color\":\"yellow\",\"text\":\"Warp Remover\"}"}] at @s if entity @e[distance=..5,tag=Warp,tag=!Phase1] run function kwn:warp_remover/success

# On Failure
execute as @e[nbt={CustomName:"{\"color\":\"yellow\",\"text\":\"Warp Remover\"}"},tag=!Success] at @s unless entity @e[distance=..5,tag=Warp,tag=!Phase1] run function kwn:warp_remover/failure

# Armor Stand
execute as @e[tag=Warp,tag=rm] at @s run function kwn:warp_remover/armor_stand

#-------------------------------------------------------
# Book of Warping
#-------------------------------------------------------

#Enable book trigger
scoreboard players enable @a kwn

#Coord Info
execute at @a[scores={kwn=320}] run function kwn:book/coordinfo
execute at @a[scores={kwn=321}] run function kwn:book/coordinate_saver
execute at @a[scores={kwn=322}] run function kwn:book/warp_placer
execute at @a[scores={kwn=323}] run function kwn:book/warp_remover
