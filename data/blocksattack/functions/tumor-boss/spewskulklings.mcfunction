execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s positioned ~ ~ ~ run summon magma_cube ~-2 ~5 ~-2 {Size:1}
execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s positioned ~ ~ ~ run summon magma_cube ~2 ~5 ~2 {Size:1}
execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s positioned ~ ~ ~ run summon magma_cube ~-2 ~5 ~2 {Size:1}
execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s positioned ~ ~ ~ run summon magma_cube ~2 ~5 ~-2 {Size:1}

# make the summoned sculklings float down
execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] run effect give @e[type=magma_cube,distance=..10] minecraft:slow_falling 20 7 true

execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] run playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 10 0.75
execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] run playsound minecraft:entity.magma_cube.death hostile @a ~ ~ ~ 10 1
execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] run playsound minecraft:entity.magma_cube.jump hostile @a ~ ~ ~ 10 1
execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] run playsound minecraft:entity.magma_cube.squish hostile @a ~ ~ ~ 10 1
execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain] run playsound minecraft:block.slime_block.fall hostile @a ~ ~ ~ 10 1