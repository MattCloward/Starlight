execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s positioned ~ ~ ~ run summon magma_cube ~-2 ~5 ~-2 {Size:1}
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s positioned ~ ~ ~ run summon magma_cube ~2 ~5 ~2 {Size:1}
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s positioned ~ ~ ~ run summon magma_cube ~-2 ~5 ~2 {Size:1}
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s positioned ~ ~ ~ run summon magma_cube ~2 ~5 ~-2 {Size:1}

# make the summoned sculklings float down
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain] run effect give @e[type=magma_cube,distance=..10] minecraft:slow_falling 20 7 true
