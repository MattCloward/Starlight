schedule function blocksattack:spiderlight/spidermobtick 1t

# debug command that turns all spiders into spiderlights (spiderlights are currently only created in ray/replace)
# execute as @e[type=spider,tag=!spider_light] run function blocksattack:spiderlight/spawnspiderlight

# rotates block displays to match spiders
execute as @e[type=block_display,tag=spider_light] at @s run data modify entity @s Rotation set from entity @e[type=spider,tag=spider_light,limit=1,sort=nearest] Rotation

# TODO fix sounds?
# if the spider dies, kill the brain
execute as @e[type=!spider,tag=spider_light,tag=brain,predicate=!blocksattack:is_riding_vehicle] run function blocksattack:spiderlight/kill-spiderlight
# if the brain dies, kill the spider
execute as @e[type=spider,tag=spider_light,predicate=!blocksattack:has_brain] run function blocksattack:spiderlight/kill-spiderlight
# kills all block displays not riding something
execute as @e[type=block_display,tag=spider_light,predicate=!blocksattack:is_riding_vehicle] run kill @s

# freeze spider if not close to player
execute as @e[type=spider,tag=spider_light] at @s if entity @p[limit=1,sort=nearest,distance=16..,gamemode=!spectator] run function blocksattack:freezeblockmob
# unfreeze spider entity if close to player
execute as @e[type=spider,tag=spider_light,nbt={NoAI:1b}] at @s if entity @p[limit=1,sort=nearest,distance=..10,gamemode=!spectator] run data merge entity @s {NoAI:0b,Silent:0b}
