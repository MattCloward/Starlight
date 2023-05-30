execute at @s run fill ~-.1 ~-.1 ~-.1 ~.1 ~.1 ~.1 minecraft:air replace minecraft:sculk_catalyst
# fill all sculk sensors and shriekers with bones
execute at @s run fill ~-10 ~-3 ~-10 ~10 ~3 ~10 minecraft:bone_block replace minecraft:sculk_sensor
execute at @s run fill ~-10 ~-3 ~-10 ~10 ~3 ~10 minecraft:bone_block replace minecraft:sculk_shrieker

execute at @s run summon evoker_fangs ~ ~ ~
execute at @s run kill @e[type=block_display,tag=bloom_remover,limit=1,sort=nearest]
