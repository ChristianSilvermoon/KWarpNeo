
#Tag Items
execute as @e[type=item] at @s if block ~ ~ ~ minecraft:enchanting_table run tag @s add onEnchantTable
execute as @e[type=item] at @s unless block ~ ~ ~ minecraft:enchanting_table run tag @s remove onEnchantTable

execute as @e[type=item,nbt={Item:{id:"minecraft:book"}},tag=onEnchantTable] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}},tag=onEnchantTable,distance=..2] run function kwn:floor_crafting/book
