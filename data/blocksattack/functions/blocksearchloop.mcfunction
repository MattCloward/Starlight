scoreboard players add @s blocksearchcast 1

# execute if block ^ ^ ^1 air run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 1 force

# TODO if in ground, how do?

execute if block ^ ^ ^1 sculk if block ^ ^1 ^1 air unless entity @e[type=magma_cube,distance=..2] run function blocksattack:spawnskulkling
# scoreboard players set @s blockfound 1
# execute if block ^ ^ ^1 sculk if block ^ ^1 ^1 air unless entity @e[type=magma_cube,distance=..2] run particle minecraft:flame ~ ~1 ~1 0.2 0.2 0.2 0 20 force
# execute if block ^ ^ ^1 sculk if block ^ ^1 ^1 air unless entity @e[type=magma_cube,distance=..2] run summon magma_cube ^ ^1 ^1 {Size:0}
# execute if block ^ ^ ^1 sculk run setblock ^ ^ ^1 air



# execute if score @s blockfound matches 0 if entity @s[distance=..20] positioned ^ ^ ^1 if block ~ ~ ~ air run function blocksattack:blocksearchloop
execute if score @s blockfound matches 0 if entity @s[distance=..20] positioned ^ ^ ^1 run function blocksattack:blocksearchloop