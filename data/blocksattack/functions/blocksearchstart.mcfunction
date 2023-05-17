scoreboard players set @s blocksearchcast 0
scoreboard players set @s blockfound 0
scoreboard players reset @s blocksearchstart
execute at @s align xyz rotated 0 0 facing ^ ^ ^1 positioned ~10.5 ~-10.5 ~-10.5 run function blocksattack:blocksearchinithorizontal

# execute anchored feet at @s rotated 0 0 facing ^ ^ ^1 run function blocksattack:blocksearchloop
# execute anchored eyes at @s rotated 0 0 facing ^ ^ ^-1 run function blocksattack:blocksearchloop
# execute anchored feet at @s rotated 0 0 facing ^1 ^ ^ run function blocksattack:blocksearchloop
# execute anchored eyes at @s rotated 0 0 facing ^-1 ^ ^ run function blocksattack:blocksearchloop
