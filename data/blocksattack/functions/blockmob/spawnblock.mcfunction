execute run effect give @s invisibility 999999 1 true
execute run tag @s add block_mob
execute run effect give @s strength 999999 2 true
execute run effect give @s speed 999999 5 true
execute run data merge entity @s {CustomName:'[{"text":"Sentient Starlight","color":"blue","italic":true}]'}
execute at @s run summon block_display ~-0.5 ~ ~-0.5 {Tags:["block_mob"],block_state:{Name:"minecraft:sculk",Properties:{}},transformation:[1.0000f,0.0000f,0.0000f,-0.5000f,0.0000f,1.0000f,0.0000f,-0.7800f,0.0000f,0.0000f,1.0000f,-0.5000f,0.0000f,0.0000f,0.0000f,1.0000f]}
execute at @s run ride @e[limit=1,tag=block_mob,tag=!block_mob3,type=block_display,predicate=!blocksattack:is_riding_vehicle] mount @s
execute as @s at @s run data merge entity @s {DeathLootTable:"minecraft:blocks/sculk"}
