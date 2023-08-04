schedule function blocksattack:tumor-boss/tick 1t

# rotate all block displays in the direction the brain is facing
execute as @e[type=block_display,tag=shifter,tag=phase2] at @s run data modify entity @s Rotation set from entity @e[type=magma_cube,tag=shifter,tag=brain,limit=1,sort=nearest] Rotation
execute as @e[type=block_display,tag=shifter,tag=phase1,tag=!stick1,tag=!stick2] at @s run tp @s ~ ~ ~ facing entity @a[limit=1,sort=nearest] eyes

# check if interactions have been hit
execute at @e[tag=shifter,tag=brain] as @e[limit=1,sort=nearest,tag=shifter,tag=stick1,type=interaction] on attacker run function blocksattack:tumor-boss/hurt
execute at @e[tag=shifter,tag=brain] as @e[limit=1,sort=nearest,tag=shifter,tag=stick2,type=interaction] on attacker run function blocksattack:tumor-boss/hurt
execute at @e[tag=shifter,tag=brain] as @e[limit=1,sort=nearest,tag=shifter,tag=bodyinteraction,type=interaction] on attacker run function blocksattack:tumor-boss/hurt


# kill all block displays and interactions not attached to the boss brain
execute as @e[type=block_display,tag=shifter,predicate=!blocksattack:is_riding_vehicle] at @s run function blocksattack:tumor-boss/kill

# commands handling boss bar
execute as @e[tag=shifter,tag=brain] store result bossbar shifter value run scoreboard players get @s health

# execute as @e[type=interaction,tag=shifter,tag=stick1] at @s positioned ~ ~15 ~ run particle angry_villager ~ ~ ~ 0.25 0.25 0.25 0 1 force
# execute as @e[type=interaction,tag=shifter,tag=stick2] at @s positioned ~ ~15 ~ run particle angry_villager ~ ~ ~ 0.25 0.25 0.25 0 1 force

# TODO this needs to only happen if skulklings have been killed
# attack if the age timer reaches a certain value
execute as @e[tag=shifter,tag=brain,tag=phase1,scores={entityAge=500..}] at @s run function blocksattack:tumor-boss/phase1chooseattack

# if the brain has one health, start the next phase
# TODO make the boss bar be based only on the score and not actual health to ensure no early death occurs
execute as @e[tag=shifter,tag=brain,tag=phase1,scores={health=..0}] run function blocksattack:tumor-boss/startsecondphase 

# TODO if arrow gets close, warn players that arrows phase right through this boss

# teleport the interaction entity to the phase 2 brain
execute as @e[type=magma_cube,tag=shifter,tag=brain,tag=phase2] run tp @e[limit=1,sort=nearest,tag=shifter,tag=bodyinteraction] @s
