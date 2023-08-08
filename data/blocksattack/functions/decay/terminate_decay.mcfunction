kill @s
# particle block sculk ~ ~1 ~ .3 .3 .3 1 20
particle minecraft:smoke ~ ~.5 ~ .1 .1 .1 .1 20
particle minecraft:sculk_soul ~ ~.5 ~ .1 .1 .1 0.01 2
# particle dust ~ ~1 ~ .3 .3 .3 1 20
playsound block.sculk.break block @a ~ ~ ~ 5
playsound block.sculk.hit block @a ~ ~ ~ 5
playsound minecraft:block.sculk.place block @a ~ ~ ~ 5
summon area_effect_cloud ~ ~-2 ~ {Particle:effect,Potion:"slowness",Radius:5,Duration:140,Color:0}
summon area_effect_cloud ~ ~-2 ~ {Particle:effect,Potion:"night_vision",Radius:5,Duration:140,Color:0}