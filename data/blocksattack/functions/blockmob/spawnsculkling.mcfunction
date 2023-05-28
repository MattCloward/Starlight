execute at @a[sort=nearest,limit=1] if block ~ ~-1 ~ sculk run summon magma_cube ~ ~-1 ~ {Size:1}
execute at @a[sort=nearest,limit=1] if block ~ ~-1 ~ sculk run setblock ~ ~-1 ~ air replace

execute at @a[sort=nearest,limit=1] if block ~ ~-1 ~-1 sculk run summon magma_cube ~ ~-1 ~-1 {Size:1}
execute at @a[sort=nearest,limit=1] if block ~ ~-1 ~-1 sculk run setblock ~ ~-1 ~-1 air replace

execute at @a[sort=nearest,limit=1] if block ~-1 ~-1 ~ sculk run summon magma_cube ~-1 ~-1 ~ {Size:1}
execute at @a[sort=nearest,limit=1] if block ~-1 ~-1 ~ sculk run setblock ~-1 ~-1 ~ air replace

execute at @a[sort=nearest,limit=1] if block ~ ~-1 ~1 sculk run summon magma_cube ~ ~-1 ~1 {Size:1}
execute at @a[sort=nearest,limit=1] if block ~ ~-1 ~1 sculk run setblock ~ ~-1 ~1 air replace

execute at @a[sort=nearest,limit=1] if block ~1 ~-1 ~ sculk run summon magma_cube ~1 ~-1 ~ {Size:1}
execute at @a[sort=nearest,limit=1] if block ~1 ~-1 ~ sculk run setblock ~1 ~-1 ~ air replace

execute at @a[sort=nearest,limit=1] run scoreboard players set @a[sort=nearest,limit=1] onSculkTimer 200