execute if score @s hasDecayed matches 0 run scoreboard players add @s zStep 1
execute if score @s hasDecayed matches 0 run scoreboard players reset @s xStep
execute if score @s hasDecayed matches 0 if score @s zStep matches ..12 run function blocksattack:decay/decay_ray/cast
execute if score @s hasDecayed matches 0 if score @s zStep matches 13 positioned ~ ~1 ~-13 run function blocksattack:decay/decay_ray/next/y