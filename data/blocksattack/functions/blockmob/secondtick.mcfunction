schedule function blocksattack:blockmob/secondtick 1s

# kills all block displays not riding a magma cube
execute as @e[type=block_display,tag=block_mob,predicate=!blocksattack:is_riding_vehicle] run kill @s

# give age to large magma cubes
execute as @e[type=magma_cube,tag=block_mob,nbt={Size:3}] run scoreboard players add @s entityAge 1
execute as @e[type=magma_cube,tag=block_mob,nbt={Size:3}] if score @s entityAge >= #handler xpTimer at @s run function blocksattack:spiderlight/summonxp