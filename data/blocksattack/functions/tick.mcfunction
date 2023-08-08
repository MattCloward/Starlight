# these commands are run for every tick
schedule function blocksattack:tick 1t

# if a spiderlight mob moves, set a tag that it is moving (see animatetick1 and animatetick 2 for what this causes)
execute as @e[type=spider,tag=spider_light,nbt=!{Motion:[0.0,0.0,0.0]}] run tag @s add moving 
# if the spider light has stopped moving, but still has the moving tag, make it hide
execute as @e[type=spider,tag=spider_light,tag=moving,nbt={Motion:[0.0,0.0,0.0]}] run function blocksattack:spiderlight/animate-frame0
# if the spider light has stopped moving, but still has the moving tag, make it face a cardinal direction
#execute as @e[type=spider,tag=spider_light,tag=moving,nbt={Motion:[0.0,0.0,0.0]}] at @s run tp @s ~ ~ ~ 0 0
# if the spider light has stopped moving, remove the moving tag
execute as @e[type=spider,tag=spider_light,nbt={Motion:[0.0,0.0,0.0]}] run tag @s remove moving

# remove light blocks everywhere around spiderlight brains
execute as @e[type=husk,tag=spider_light] at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace minecraft:light
# put light blocks in all spiderlights
execute as @e[type=spider,tag=spider_light] at @s run fill ~ ~ ~ ~ ~ ~ light[level=15] keep

# commands for decaying blocks (see also secondtick function)
# while the entity is alive, make it emit smoke
execute as @e[type=falling_block,tag=decaying_block,scores={entityAge=..5}] at @s run particle minecraft:smoke ~ ~.5 ~ .5 .5 .5 .01 1
# at the right age, cause the decaying block to disapear
execute as @e[type=falling_block,tag=decaying_block,scores={entityAge=5..}] at @s run function blocksattack:decay/terminate_decay

# check if the player's score is greater than the set decay timer
# TODO fix this- permissions might not work
execute as @a[gamemode=!creative,gamemode=!spectator] if score @s entityAge >= #handler decayTimer run function blocksattack:decay/decay_ray/start

# invulnerable glow effect
execute as @e[tag=shifter,tag=brain,scores={invulnerable=1..}] at @s positioned ~ ~2 ~ run particle glow ~ ~ ~ 2 2 2 1 10 force