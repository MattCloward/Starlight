execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain] run damage @s 1 player_attack
execute at @s run data merge entity @e[limit=1,sort=nearest,type=block_display,tag=eye_white] {block_state:{Name:"minecraft:pink_concrete"}}
execute at @s run data merge entity @e[limit=1,sort=nearest,type=block_display,tag=eye_pupil] {block_state:{Name:"minecraft:red_concrete"}}
schedule function blocksattack:tumor-boss/animations/reset_eye_tick 3t