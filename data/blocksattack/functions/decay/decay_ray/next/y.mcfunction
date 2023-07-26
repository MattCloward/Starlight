execute if score @s hasDecayed matches 0 run scoreboard players add @s yStep 1
execute if score @s hasDecayed matches 0 run scoreboard players reset @s zStep
execute if score @s hasDecayed matches 0 if score @s yStep matches ..5 run function blocksattack:decay/decay_ray/cast