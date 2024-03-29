schedule function blocksattack:blockmob/blockmobtick 1t

# makes all size 1 magma cubes become sculk blocks
execute as @e[type=magma_cube,nbt={Size:1},tag=!block_mob] run function blocksattack:blockmob/spawnblock
# for the boss phase 3
execute as @e[type=magma_cube,nbt={Size:3},tag=!block_mob] run function blocksattack:blockmob/spawnblockbig

# kills size 0 magma cubes
execute as @e[type=magma_cube,nbt={Size:0}] run data merge entity @s {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:"minecraft:empty"}

# rotates block displays to match magma_cubes
execute as @e[type=block_display,tag=block_mob] at @s run data modify entity @s Rotation set from entity @e[type=magma_cube,tag=block_mob,limit=1,sort=nearest] Rotation