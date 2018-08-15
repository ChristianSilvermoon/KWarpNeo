execute at @p[scores={kwn=322}] if entity @p[level=10..] run function kwn:items/placer
execute at @p[scores={kwn=322}] if entity @p[level=..9] run tellraw @p [{"text":""},{"text":"[KWarpNeo] ","color":"green","bold":"true"},{"text":"You don't have enough levels!","color":"red"}]
execute at @p[scores={kwn=322}] if entity @p[level=10..] run xp add @p -10 levels
scoreboard players set @p[scores={kwn=322}] kwn 0
