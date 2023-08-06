execute as @e[type=block_display,tag=eye] at @s run function blocksattack:tumor-boss/animations/eye/close_eye
schedule function blocksattack:tumor-boss/animations/eye/open_eye 3t
scoreboard players set @e[type=block_display,tag=eye] bossanimationtick 0