schedule function blocksattack:blockmob/secondtick 1s

# kills all block displays not riding a magma cube
execute as @e[type=block_display,tag=block_mob,predicate=!blocksattack:is_riding_vehicle] run kill @s