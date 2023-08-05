schedule function blocksattack:secondtick 1s

# add age (in seconds) to player
execute at @a run scoreboard players add @a[sort=nearest,limit=1] entityAge 1

# add age (in seconds) to decaying blocks
execute as @e[type=falling_block,tag=decaying_block] run scoreboard players add @s entityAge 1

# while players are on top of sculk, decrement their timer
execute at @a[gamemode=!creative,gamemode=!spectator] if block ~ ~-1 ~ sculk run scoreboard players remove @a[sort=nearest,limit=1] onSculkTimer 1
# if the block below isn't sculk but the block below that is...
execute at @a[gamemode=!creative,gamemode=!spectator] unless block ~ ~-1 ~ sculk if block ~ ~-2 ~ sculk run scoreboard players remove @a[sort=nearest,limit=1] onSculkTimer 1
# if the player is not on top of sculk (or sculk veins), reset their timer
execute at @a[gamemode=!creative,gamemode=!spectator] unless block ~ ~-1 ~ sculk unless block ~ ~-2 ~ sculk unless block ~ ~ ~ sculk_vein unless block ~ ~-1 ~ sculk_vein run scoreboard players operation @a[sort=nearest,limit=1] onSculkTimer = #sentience sentienceTimer
# if the player's sculk timer dips below 0, make the sculk around them come alive and reset their timer
execute at @a[scores={onSculkTimer=..0},gamemode=!creative,gamemode=!spectator] if block ~ ~-1 ~ sculk run function blocksattack:blockmob/spawnsculkling
# if the player is jumping, still spawn the sculklings
execute at @a[scores={onSculkTimer=..0},gamemode=!creative,gamemode=!spectator] unless block ~ ~-1 ~ sculk if block ~ ~-2 ~ sculk positioned ~ ~-1 ~ run function blocksattack:blockmob/spawnsculkling
