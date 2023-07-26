schedule function blocksattack:tumor-boss/tick 1t

# check if sticks have been hit
execute at @e[tag=shifter,tag=brain] as @e[limit=1,sort=nearest,tag=shifter,tag=stick1,type=interaction] on attacker run function blocksattack:tumor-boss/hurt
execute at @e[tag=shifter,tag=brain] as @e[limit=1,sort=nearest,tag=shifter,tag=stick1,type=interaction] run data remove entity @s attack
execute at @e[tag=shifter,tag=brain] as @e[limit=1,sort=nearest,tag=shifter,tag=stick2,type=interaction] on attacker run function blocksattack:tumor-boss/hurt
execute at @e[tag=shifter,tag=brain] as @e[limit=1,sort=nearest,tag=shifter,tag=stick2,type=interaction] run data remove entity @s attack


# kill all block displays and interactions not attached to the boss brain
execute as @e[type=block_display,tag=shifter,predicate=!blocksattack:is_riding_vehicle] at @s run function blocksattack:tumor-boss/kill

# commands handling boss bar
execute at @e[tag=shifter,tag=brain] run bossbar set shifter players @a[distance=..200]
execute as @e[tag=shifter,tag=brain] store result bossbar shifter max run attribute @s generic.max_health get
execute as @e[tag=shifter,tag=brain] store result bossbar shifter value run data get entity @s Health
execute unless entity @e[limit=1,sort=nearest,tag=shifter,tag=brain] run bossbar remove shifter


# TODO if arrow gets close, warn players that arrows phase right through this boss