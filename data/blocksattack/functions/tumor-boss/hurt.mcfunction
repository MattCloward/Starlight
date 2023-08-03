execute at @e[tag=shifter,tag=brain] as @e[limit=1,sort=nearest,tag=shifter,tag=stick1,type=interaction] run data remove entity @s attack
execute at @e[tag=shifter,tag=brain] as @e[limit=1,sort=nearest,tag=shifter,tag=stick2,type=interaction] run data remove entity @s attack

execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain] store result score @s health run data get entity @s Health
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain] run scoreboard players remove @s health 1
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain] store result entity @s Health float 1 run scoreboard players get @s health

# play sounds
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s run playsound block.sculk_catalyst.break hostile @a ~ ~ ~
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s run playsound block.mud.break hostile @a ~ ~ ~
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s run playsound block.sculk.break hostile @a ~ ~ ~
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s run playsound block.sculk_shrieker.shriek hostile @a ~ ~ ~ 2

# spawn sculklings
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s run function blocksattack:tumor-boss/spewskulklings

# break all blocks within the area
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain] at @s positioned ~ ~2 ~ run fill ~-6 ~-5 ~-6 ~6 ~9 ~6 air destroy

execute at @s run data merge entity @e[limit=1,sort=nearest,type=block_display,tag=eye_white] {block_state:{Name:"minecraft:pink_concrete"}}
execute at @s run data merge entity @e[limit=1,sort=nearest,type=block_display,tag=eye_pupil] {block_state:{Name:"minecraft:red_concrete"}}
schedule function blocksattack:tumor-boss/animations/reset_eye_tick 3t