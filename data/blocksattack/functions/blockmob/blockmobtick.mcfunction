# TODO remove
# add tag to all size 0 magma_cubes
execute as @e[type=magma_cube,nbt={Size:1},tag=!block_mob] run function blocksattack:blockmob/spawnblock

# TODO remove
# kills baby magma_cubes
# execute as @e[type=magma_cube,nbt={Size:0}] run kill @s
execute as @e[type=magma_cube,nbt={Size:0}] run data merge entity @s {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:""}

# execute as @p at @s run summon magma_cube ~ ~ ~ {Tags:[block_mob],Size:0}

# freeze block if not close to player
execute as @e[type=magma_cube,tag=block_mob] at @s if entity @p[limit=1,sort=nearest,distance=10..,gamemode=!spectator] run function blocksattack:blockmob/freezeblock
# unfreeze block entity if close to player
execute as @e[type=magma_cube,tag=block_mob] at @s if entity @p[limit=1,sort=nearest,distance=..10,gamemode=!spectator] run data merge entity @s {NoAI:0b}

# if the magma_cube a block display was attached to dies, kill it too
execute as @e[tag=block,type=block_display] at @s unless entity @e[type=magma_cube,distance=..1.2,tag=block_mob] run kill @s

# keeps block displays inside magma_cubes
# execute as @e[type=magma_cube,tag=block_mob] at @s run tp @e[type=block_display,tag=block_mob,limit=1,sort=nearest] ^-0.5 ^ ^-0.5
# rotates block displays to match magma_cubes
execute as @e[type=block_display,tag=block_mob] at @s run data modify entity @s Rotation set from entity @e[type=magma_cube,tag=block_mob,limit=1,sort=nearest] Rotation

# kills all block displays not riding a magma cube
execute as @e[type=block_display,tag=block_mob,predicate=!blocksattack:is_riding_vehicle] run kill @s
# if a magma_cube doesn't have a block display, creates another one
# execute as @e[type=magma_cube,tag=block_mob] at @s unless entity @e[tag=block_mob,type=block_display,distance=..2] run function blocksattack:blockmob/spawnblock

# make magma_cubes tp to player's head if they get too close
execute at @p[gamemode=!spectator,gamemode=!creative] anchored eyes if entity @e[type=magma_cube,tag=block_mob,distance=..1.75,sort=nearest] run function blocksattack:blockmob/attachtoplayer