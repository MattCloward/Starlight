execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s positioned ~ ~ ~ run summon spider ~-2 ~5 ~-2
execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s positioned ~ ~ ~ run summon spider ~2 ~5 ~2
execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s positioned ~ ~ ~ run summon spider ~-2 ~5 ~2
execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s positioned ~ ~ ~ run summon spider ~2 ~5 ~-2

execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s as @e[type=spider,tag=!spider_light,distance=..15] run function blocksattack:spiderlight/spawnspiderlight

# make the summoned starlights float down
execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s run effect give @e[type=spider,distance=..10] minecraft:slow_falling 20 5 true

execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] run playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 10 0.75
execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] run playsound minecraft:entity.magma_cube.death hostile @a ~ ~ ~ 10 1
execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] run playsound minecraft:entity.magma_cube.jump hostile @a ~ ~ ~ 10 1
execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] run playsound minecraft:entity.magma_cube.squish hostile @a ~ ~ ~ 10 1
execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] run playsound minecraft:block.slime_block.fall hostile @a ~ ~ ~ 10 1