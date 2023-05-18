# these commands are run for every tick
schedule function blocksattack:tick 1t

# all commands for handling block mobs
execute run function blocksattack:blockmob/blockmobtick
execute run function blocksattack:spiderlight/spidermobtick

# execute as @a[scores={blocksearchstart=1..}] at @s run function blocksattack:blocksearchstart

# if a spiderlight mob moves, set a tag that it is moving (see animatetick1 and animatetick 2 for what this causes)
execute as @e[type=spider,tag=spider_light,nbt=!{Motion:[0.0,0.0,0.0]}] run tag @s add moving 
# if the spider light has stopped moving, but still has the moving tag, set its animation to the default frame
execute as @e[type=spider,tag=spider_light,tag=moving,nbt={Motion:[0.0,0.0,0.0]}] run function blocksattack:spiderlight/animate-frame0
# if the spider light has stopped moving, remove the moving tag
execute as @e[type=spider,tag=spider_light,nbt={Motion:[0.0,0.0,0.0]}] run tag @s remove moving

# remove light blocks everywhere around spiderlight brains
execute as @e[type=husk,tag=spider_light] at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace minecraft:light
# put light blocks behind all spiderlights
execute as @e[type=spider,tag=spider_light] at @s run fill ~ ~ ~ ~ ~ ~ light[level=15] keep



execute as @e[type=slime] run data merge entity @s {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:""}
execute as @e[type=skeleton] run data merge entity @s {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:""}
execute as @e[type=creeper] run data merge entity @s {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:""}
execute as @e[type=enderman] run data merge entity @s {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:""}
execute as @e[type=zombie] run data merge entity @s {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:""}