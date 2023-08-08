execute at @s run fill ~-.1 ~-.1 ~-.1 ~.1 ~.1 ~.1 minecraft:air replace minecraft:sculk_catalyst
# fill all sculk sensors and shriekers with bones
execute as @s at @s align xyz positioned ~-5.5 ~-4.5 ~-5.5 run function blocksattack:ray/start
# execute at @s run fill ~-10 ~-3 ~-10 ~10 ~3 ~10 minecraft:bone_block replace minecraft:sculk_sensor
# execute at @s run fill ~-10 ~-3 ~-10 ~10 ~3 ~10 minecraft:bone_block replace minecraft:sculk_shrieker

execute at @s run summon evoker_fangs ~ ~ ~ {CustomName:'[{"text":"Starlight Fangs","color":"dark_aqua"}]'}
execute at @s as @e[type=evoker_fangs,sort=nearest] run effect give @a[distance=..1] instant_damage 1 5
# remove this tag so this function is run only once, even though the bloom-remover remains alive (see ray/next/y for kill command)
execute at @s run tag @s remove not_activated