schedule function blocksattack:tumor-boss/tick 1t

# rotate all block displays in the direction the brain is facing
execute as @e[type=block_display,tag=shifter] at @s run data modify entity @s Rotation set from entity @e[type=magma_cube,tag=shifter,tag=brain,limit=1,sort=nearest] Rotation

# check if sticks have been hit
execute at @e[tag=shifter,tag=brain] as @e[limit=1,sort=nearest,tag=shifter,tag=stick1,type=interaction] on attacker run function blocksattack:tumor-boss/hurt
execute at @e[tag=shifter,tag=brain] as @e[limit=1,sort=nearest,tag=shifter,tag=stick2,type=interaction] on attacker run function blocksattack:tumor-boss/hurt

# kill all block displays and interactions not attached to the boss brain
execute as @e[type=block_display,tag=shifter,predicate=!blocksattack:is_riding_vehicle] at @s run function blocksattack:tumor-boss/kill

# execute as @e[type=interaction,tag=shifter,tag=stick1] at @s positioned ~ ~15 ~ run particle angry_villager ~ ~ ~ 0.25 0.25 0.25 0 1 force
# execute as @e[type=interaction,tag=shifter,tag=stick2] at @s positioned ~ ~15 ~ run particle angry_villager ~ ~ ~ 0.25 0.25 0.25 0 1 force

# TODO this needs to only happen if skulklings have been killed
# spit out enemies if the age timer reaches a certain value
# execute as @e[tag=shifter,tag=brain,tag=phase1,scores={entityAge=500..}] at @s run function blocksattack:tumor-boss/spewskulklings

# if the brain has one health, start the next phase
execute as @e[tag=shifter,tag=brain,tag=phase1,scores={health=1}] run function blocksattack:tumor-boss/startsecondphase 

# TODO if arrow gets close, warn players that arrows phase right through this boss