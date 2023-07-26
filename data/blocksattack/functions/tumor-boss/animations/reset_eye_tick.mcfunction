schedule function blocksattack:tumor-boss/animations/reset_eye_tick 10t

execute at @e[tag=brain,tag=shifter] run data merge entity @e[limit=1,sort=nearest,type=block_display,tag=eye_white] {block_state:{Name:"minecraft:white_concrete"}}
execute at @e[tag=brain,tag=shifter] run data merge entity @e[limit=1,sort=nearest,type=block_display,tag=eye_pupil] {block_state:{Name:"minecraft:black_concrete"}}
