execute at @p[scores={kwn=323}] if entity @p[level=5..] run function kwn:items/remover
execute at @p[scores={kwn=323}] if entity @p[level=..5] run tellraw @p [{"text":""},{"text":"[KWarpNeo] ","color":"green","bold":"true"},{"text":"You don't have enough levels!","color":"red"}]
execute at @p[scores={kwn=323}] if entity @p[level=5..] run xp add @p -5 levels
scoreboard players set @p[scores={kwn=323}] kwn 0
