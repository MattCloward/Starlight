# spawn all available sculk blocks within a cross shape around the player
execute if block ~ ~-1 ~ sculk run summon magma_cube ~ ~-1 ~ {Size:1,PersistenceRequired:1b}
execute if block ~ ~-1 ~ sculk run setblock ~ ~-1 ~ air replace

execute if block ~ ~-1 ~-1 sculk run summon magma_cube ~ ~-1 ~-1 {Size:1,PersistenceRequired:1b}
execute if block ~ ~-1 ~-1 sculk run setblock ~ ~-1 ~-1 air replace

execute if block ~-1 ~-1 ~ sculk run summon magma_cube ~-1 ~-1 ~ {Size:1,PersistenceRequired:1b}
execute if block ~-1 ~-1 ~ sculk run setblock ~-1 ~-1 ~ air replace

execute if block ~ ~-1 ~1 sculk run summon magma_cube ~ ~-1 ~1 {Size:1,PersistenceRequired:1b}
execute if block ~ ~-1 ~1 sculk run setblock ~ ~-1 ~1 air replace

execute if block ~1 ~-1 ~ sculk run summon magma_cube ~1 ~-1 ~ {Size:1,PersistenceRequired:1b}
execute if block ~1 ~-1 ~ sculk run setblock ~1 ~-1 ~ air replace

# reset the player's score
execute run scoreboard players operation @a[sort=nearest,limit=1] onSculkTimer = #blocksattackhandler sentienceTimer