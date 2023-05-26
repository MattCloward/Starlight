# these commands are run for every tick
schedule function blocksattack:tick 1t

# all commands for handling block mobs
execute run function blocksattack:blockmob/blockmobtick
execute run function blocksattack:spiderlight/spidermobtick

# execute as @a[scores={blocksearchstart=1..}] at @s run function blocksattack:blocksearchstart

# TODO
execute as @a[scores={test=1..}] at @s run function blocksattack:starcreeper/spawnstarcreeper

# if a spiderlight mob moves, set a tag that it is moving (see animatetick1 and animatetick 2 for what this causes)
execute as @e[type=spider,tag=spider_light,nbt=!{Motion:[0.0,0.0,0.0]}] run tag @s add moving 
# if the spider light has stopped moving, but still has the moving tag, make it hide
execute as @e[type=spider,tag=spider_light,tag=moving,nbt={Motion:[0.0,0.0,0.0]}] run function blocksattack:spiderlight/animate-frame0
# if the spider light has stopped moving, but still has the moving tag, make it face a cardinal direction
execute as @e[type=spider,tag=spider_light,tag=moving,nbt={Motion:[0.0,0.0,0.0]}] at @s run tp @s ~ ~ ~ 0 0
# if the spider light has stopped moving, remove the moving tag
execute as @e[type=spider,tag=spider_light,nbt={Motion:[0.0,0.0,0.0]}] run tag @s remove moving


# remove light blocks everywhere around spiderlight brains
execute as @e[type=husk,tag=spider_light] at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace minecraft:light
# put light blocks behind all spiderlights
execute as @e[type=spider,tag=spider_light] at @s run fill ~ ~ ~ ~ ~ ~ light[level=15] keep

# execute as @e[type=slime] run data merge entity @s {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:""}
execute as @e[type=skeleton] run data merge entity @s {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:""}
# execute as @e[type=creeper] run data merge entity @s {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:""}
execute as @e[type=enderman] run data merge entity @s {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:""}
# execute as @e[type=zombie] run data merge entity @s {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:""}

# add age to xp orbs- when they get old enough, spawn bloom
execute as @e[type=experience_orb] run scoreboard players add @s entityAge 1
execute as @e[type=experience_orb,scores={entityAge=200..}] at @s run function blocksattack:bloom
# add age to bloom removers- when they get old enough, remove the catalyst and spawn a fang
execute as @e[type=block_display,tag=bloom_remover] run scoreboard players add @s entityAge 1
execute as @e[type=block_display,scores={entityAge=100..}] at @s run function blocksattack:bloom-remove