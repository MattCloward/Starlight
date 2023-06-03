## DEGUB COMMAND v
# fill ~ ~ ~ ~ ~ ~ glass keep

execute if block ~ ~ ~ sculk_sensor run function blocksattack:ray/replace
scoreboard players add @s xStep 1
execute if score @s xStep matches ..10 positioned ~1 ~ ~ run function blocksattack:ray/cast
execute if score @s xStep matches 11 positioned ~-10 ~ ~1 run function blocksattack:ray/next/z
