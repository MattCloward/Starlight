scoreboard players remove @s bonecast 1
execute if block ^ ^ ^1 air run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 1 force
execute unless block ^ ^ ^1 air run particle minecraft:happy_villager ~ ~ ~ 1.25 1.25 1.25 2 20 force
# execute unless block ^ ^ ^1 air run fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:flowering_azalea_leaves[persistent=false] keep
execute unless block ^ ^ ^1 air run playsound minecraft:entity.allay.death player @a[distance=..15] ~ ~ ~ 0.5 2
execute if score @s bonecast matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ air run function blocksattack:tumor-boss/bone-spike/ray-loop