# makes all size 1 magma cubes become sculk blocks
execute as @e[type=magma_cube,nbt={Size:1},tag=!block_mob] run function blocksattack:blockmob/spawnblock

# kills size 0 magma cubes
execute as @e[type=magma_cube,nbt={Size:0}] run data merge entity @s {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:"minecraft:empty"}

# freeze block if not close to player
execute as @e[type=magma_cube,tag=block_mob] at @s if entity @p[limit=1,sort=nearest,distance=16..,gamemode=!spectator] run function blocksattack:freezeblockmob
# unfreeze block entity if close to player
execute as @e[type=magma_cube,tag=block_mob,nbt={NoAI:1b}] at @s if entity @p[limit=1,sort=nearest,distance=..10,gamemode=!spectator] run data merge entity @s {NoAI:0b,Silent:0b}

# rotates block displays to match magma_cubes
execute as @e[type=block_display,tag=block_mob] at @s run data modify entity @s Rotation set from entity @e[type=magma_cube,tag=block_mob,limit=1,sort=nearest] Rotation

# kills all block displays not riding a magma cube
execute as @e[type=block_display,tag=block_mob,predicate=!blocksattack:is_riding_vehicle] run kill @s