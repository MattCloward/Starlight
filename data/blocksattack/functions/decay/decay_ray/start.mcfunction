execute at @s run scoreboard players set @s hasDecayed 0
execute at @s run scoreboard players reset @a[limit=1,sort=nearest] xStep
execute at @s run scoreboard players reset @a[limit=1,sort=nearest] yStep
execute at @s run scoreboard players reset @a[limit=1,sort=nearest] zStep
# TODO this might not work without permissions- test!
execute at @s align xyz positioned ~-5.5 ~-2.5 ~-5.5 run function blocksattack:decay/decay_ray/cast
execute at @s run scoreboard players reset @s entityAge