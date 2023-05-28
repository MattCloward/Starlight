execute run effect give @s invisibility 999999 1 true
execute run tag @s add block_mob
execute run effect give @s strength 999999 2 true
execute at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"minecraft:sculk"},Tags:["block_mob"]}
execute at @s run ride @e[limit=1,sort=nearest,tag=block_mob,type=block_display] mount @s
execute at @s as @e[limit=1,sort=nearest,tag=block_mob,type=block_display] run data merge entity @s {transformation:{translation:[-0.5f,-0.78f,-0.5f]}}
execute as @s at @s run data merge entity @s {DeathLootTable:"minecraft:blocks/sculk"}
