execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain] store result score @s health run data get entity @s Health
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain] run scoreboard players remove @s health 1
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain] store result entity @s Health float 1 run scoreboard players get @s health

execute at @s run playsound entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1.5 0.8

execute at @s run data merge entity @e[limit=1,sort=nearest,type=block_display,tag=eye_white] {block_state:{Name:"minecraft:pink_concrete"}}
execute at @s run data merge entity @e[limit=1,sort=nearest,type=block_display,tag=eye_pupil] {block_state:{Name:"minecraft:red_concrete"}}
schedule function blocksattack:tumor-boss/animations/reset_eye_tick 3t