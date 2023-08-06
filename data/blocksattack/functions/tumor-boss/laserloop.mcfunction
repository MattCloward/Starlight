scoreboard players remove @s lasercast 1
execute if block ^ ^ ^1 air run particle minecraft:dust 0.67 0 0 0.5 ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute if entity @e[distance=..2,type=!block_display,type=!interaction,type=!magma_cube] run gamerule mobGriefing false
execute if entity @e[distance=..2,type=!block_display,type=!interaction,type=!magma_cube] positioned ^ ^ ^0.5 run summon creeper ^ ^ ^1 {Fuse:0,ExplosionRadius:2,CustomName:'[{"text":"Eye Laser"}]'}
execute if entity @e[distance=..2,type=!block_display,type=!interaction,type=!magma_cube] run schedule function blocksattack:tumor-boss/mobgriefingtrue 20t
# TODO remove other junk here
#particle dust 0.67 0 0 0.5 ~ ~ ~ 0.5 0.5 0.5 2 5 force
#particle minecraft:dust 0.67 0 0 0.5 ~ ~ ~ 1 1 1 2 20 force
# execute unless block ^ ^ ^1 air unless entity @e[distance=..1] run particle minecraft:dust 0.67 0 0 0.5 ~ ~ ~ 1 1 1 2 20 force
# execute unless block ^ ^ ^1 air run playsound minecraft:entity.allay.death player @a[distance=..15] ~ ~ ~ 0.5 2
# execute if score @s lasercast matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ air unless entity @e[distance=..1,type=!block_display,type=!interaction,type=!magma_cube] run function blocksattack:tumor-boss/laserloop
execute if score @s lasercast matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ air unless entity @e[distance=..1,type=!block_display,type=!interaction,type=!magma_cube] run function blocksattack:tumor-boss/laserloop