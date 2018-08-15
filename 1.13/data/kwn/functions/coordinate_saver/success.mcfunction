execute as @s at @s store result score @p WarpX run data get entity @s Pos[0]
execute as @s at @s store result score @p WarpY run data get entity @s Pos[1]
execute as @s at @s store result score @p WarpZ run data get entity @s Pos[2]
execute as @s at @s run tellraw @p [{"text":""},{"text":"[KWarpNeo] ","color":"green","bold":"true"},{"text":"Coordinates Saved: ","color":"yellow"},{"text":"X"},{"score":{"name":"@p","objective":"WarpX"},"color":"green"},{"text":" Y"},{"score":{"name":"@p","objective":"WarpY"},"color":"green"},{"text":" Z"},{"score":{"name":"@p","objective":"WarpZ"},"color":"green"}]
particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0.05 50
tp @s ~ ~-255 ~
