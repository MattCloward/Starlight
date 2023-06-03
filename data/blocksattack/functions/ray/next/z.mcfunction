scoreboard players add @s zStep 1
scoreboard players reset @s xStep
execute if score @s zStep matches ..10 run function blocksattack:ray/cast
execute if score @s zStep matches 11 positioned ~ ~1 ~-11 run function blocksattack:ray/next/y