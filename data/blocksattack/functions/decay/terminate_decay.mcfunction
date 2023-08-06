kill @s
# particle block sculk ~ ~1 ~ .3 .3 .3 1 20
particle minecraft:smoke ~ ~.5 ~ .1 .1 .1 .1 20
particle minecraft:sculk_soul ~ ~.5 ~ .1 .1 .1 0.01 2
# particle dust ~ ~1 ~ .3 .3 .3 1 20
playsound block.sculk.break block @a ~ ~ ~
playsound block.sculk.hit block @a ~ ~ ~
playsound minecraft:block.sculk.place block @a ~ ~ ~
summon area_effect_cloud ~ ~-2 ~ {Particle:effect,Potion:"weakness",Radius:4,Duration:140,Color:0}