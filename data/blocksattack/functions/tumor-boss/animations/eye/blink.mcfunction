execute as @e[tag=shifter,tag=eye_white,type=block_display] at @s run function blocksattack:tumor-boss/animations/eye/close_eye
schedule function blocksattack:tumor-boss/animations/eye/open_eye 3t
scoreboard players set @e[type=block_display,tag=eye_white,limit=1,sort=nearest] bossanimationtick 0
scoreboard players set @e[type=block_display,tag=eye_pupil,limit=1,sort=nearest] bossanimationtick 0