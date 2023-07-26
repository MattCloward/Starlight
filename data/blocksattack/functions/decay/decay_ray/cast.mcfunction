## DEGUB COMMAND v
# fill ~ ~ ~ ~ ~ ~ glass keep

execute if score @s hasDecayed matches 0 if block ~ ~ ~ sculk if block ~ ~1 ~ air run function blocksattack:decay/decay
execute if score @s hasDecayed matches 0 run scoreboard players add @s xStep 1
execute if score @s hasDecayed matches 0 if score @s xStep matches ..12 positioned ~1 ~ ~ run function blocksattack:decay/decay_ray/cast
execute if score @s hasDecayed matches 0 if score @s xStep matches 13 positioned ~-12 ~ ~1 run function blocksattack:decay/decay_ray/next/z
