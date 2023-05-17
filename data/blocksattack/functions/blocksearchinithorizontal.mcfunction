execute if score @s blockfound matches 0 if entity @s[distance=..20] positioned ~-1 ~ ~ run function blocksattack:blocksearchinithorizontal
execute if score @s blockfound matches 0 positioned ~ ~1 ~ run function blocksattack:blocksearchinitvertical

# execute run particle minecraft:explosion ~ ~ ~ 0 0 0 0 10 force
# execute run setblock ~ ~ ~ stone keep
execute positioned ^ ^ ^1 rotated 0 0 facing ^ ^ ^1 run function blocksattack:blocksearchloop
