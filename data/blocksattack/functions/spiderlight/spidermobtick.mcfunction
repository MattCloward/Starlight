execute as @e[type=spider,tag=!spider_light] run function blocksattack:spiderlight/spawnspiderlight


# rotates block displays to match spiders
execute as @e[type=block_display,tag=spider_light] at @s run data modify entity @s Rotation set from entity @e[type=spider,tag=spider_light,limit=1,sort=nearest] Rotation

# TODO fix sounds?
# if the spider dies, kill the brain
execute as @e[type=!spider,tag=spider_light,tag=brain,predicate=!blocksattack:is_riding_vehicle] run function blocksattack:spiderlight/kill-spiderlight
# if the brain dies, kill the spider
execute as @e[type=spider,tag=spider_light,predicate=!blocksattack:has_brain] run function blocksattack:spiderlight/kill-spiderlight
# kills all block displays not riding something
execute as @e[type=block_display,tag=spider_light,predicate=!blocksattack:is_riding_vehicle] run kill @s