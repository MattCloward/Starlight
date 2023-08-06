scoreboard players remove @s lasercast 1
execute if block ^ ^ ^1 air run particle minecraft:dust 0.67 0 0 0.5 ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute if entity @e[distance=..2,type=!block_display,type=!interaction,type=!magma_cube] positioned ^ ^ ^0.5 run summon creeper ^ ^ ^1 {Fuse:0,ExplosionRadius:2,CustomName:'[{"text":"Eye Laser"}]'}
execute unless block ^ ^ ^1 air positioned ^ ^ ^0.5 run summon creeper ^ ^ ^1 {Fuse:0,ExplosionRadius:2,CustomName:'[{"text":"Eye Laser"}]'}
execute if score @s lasercast matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ air unless entity @e[distance=..1,type=!block_display,type=!interaction,type=!magma_cube] run function blocksattack:tumor-boss/laserloop