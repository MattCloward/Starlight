scoreboard players reset @s entityAge

execute store result score @s numSculklings if entity @e[type=magma_cube,tag=block_mob,distance=..150]

execute if entity @s[scores={numSculklings=..10}] run function blocksattack:tumor-boss/spewskulklings

execute if entity @s[scores={numSculklings=10..,health=..20}] run scoreboard players add @s health 1