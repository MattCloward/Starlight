# execute at @e[tag=shifter,tag=brain] as @e[limit=1,sort=nearest,tag=shifter,type=interaction] run data remove entity @s attack
execute at @e[tag=shifter,tag=brain] as @e[distance=..5,tag=shifter,type=interaction] run data remove entity @s attack

# in phase 1, health is purely a score
# in phase 2, both the score and the brain's actual health are decreased
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain,tag=phase2,scores={invulnerable=..0}] store result score @s health run data get entity @s Health
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain,scores={invulnerable=..0}] run scoreboard players remove @s health 1
# this does knockback, but not damage for some reason
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain,tag=phase2,scores={invulnerable=..0}] run damage @s 1 player_attack by @a[sort=nearest,limit=1]
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain,tag=phase2,scores={invulnerable=..0}] store result entity @s Health float 1 run scoreboard players get @s health

execute as @e[sort=nearest,limit=1,tag=shifter,tag=brain,scores={invulnerable=..0}] run function blocksattack:tumor-boss/animations/get_big

# play sounds
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain,scores={invulnerable=..0}] at @s run playsound block.sculk_catalyst.break hostile @a ~ ~ ~ 10
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain,scores={invulnerable=..0}] at @s run playsound block.mud.break hostile @a ~ ~ ~ 10
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain,scores={invulnerable=..0}] at @s run playsound block.sculk.break hostile @a ~ ~ ~ 10
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain,scores={invulnerable=..0}] at @s run playsound block.sculk_shrieker.shriek hostile @a ~ ~ ~ 10

# spawn sculklings
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain,scores={invulnerable=..0}] at @s run function blocksattack:tumor-boss/spewskulklings

# break all blocks within the area if in phase1
execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain,tag=phase1,scores={invulnerable=..0}] at @s positioned ~ ~2 ~ run fill ~-6 ~-5 ~-6 ~6 ~9 ~6 air destroy

execute at @e[sort=nearest,limit=1,tag=shifter,tag=brain,tag=phase1,scores={invulnerable=..0}] run data merge entity @e[limit=1,sort=nearest,type=block_display,tag=eye_white] {block_state:{Name:"minecraft:pink_concrete"}}
execute at @e[sort=nearest,limit=1,tag=shifter,tag=brain,tag=phase1,scores={invulnerable=..0}] run data merge entity @e[limit=1,sort=nearest,type=block_display,tag=eye_pupil] {block_state:{Name:"minecraft:red_concrete"}}
schedule function blocksattack:tumor-boss/animations/eye/reset_eye 3t

execute at @s as @e[sort=nearest,limit=1,tag=shifter,tag=brain,tag=phase2,scores={invulnerable=..0}] run data merge entity @s {Motion:[0d,2d,0d]}

execute at @e[tag=shifter,tag=brain,scores={invulnerable=..0}] as @e[tag=shifter,tag=brain,limit=1,sort=nearest] run scoreboard players set @s invulnerable 2