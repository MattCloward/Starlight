scoreboard players add @s yStep 1
scoreboard players reset @s zStep
execute if score @s yStep matches ..8 run function blocksattack:ray/cast
execute if score @s yStep matches 9.. at @s run kill @e[type=block_display,tag=bloom_remover,limit=1,sort=nearest]