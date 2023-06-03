execute run effect give @s invisibility 999999 1 true
execute run tag @s add spider_light

# attacking brain
execute at @s run summon husk ~-0.5 ~ ~-0.5 {Tags:["spider_light","brain"],Silent:1b,IsBaby:1b}
execute at @s run ride @e[limit=1,sort=nearest,tag=spider_light,tag=brain,type=husk] mount @s
execute at @s run effect give @e[limit=1,sort=nearest,tag=spider_light,tag=brain,type=husk] invisibility 999999 1 true
# get a random value for the spawned spider (world time)
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=brain,type=husk] store result score @s spiderlightrand run time query gametime
# set the mod divider to 3
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=brain,type=husk] run scoreboard players set @s modop 3
# set the spiderlightrand of the brain to world time % 3
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=brain,type=husk] run scoreboard players operation @s spiderlightrand %= @s modop
# set the loot table depending on the spiderlightrand of the brain
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=brain,type=husk] if entity @s[scores={spiderlightrand=0}] run data merge entity @s {DeathLootTable:"minecraft:blocks/ochre_froglight"}
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=brain,type=husk] if entity @s[scores={spiderlightrand=1}] run data merge entity @s {DeathLootTable:"minecraft:blocks/pearlescent_froglight"}
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=brain,type=husk] if entity @s[scores={spiderlightrand=2}] run data merge entity @s {DeathLootTable:"minecraft:blocks/verdant_froglight"}

# body
# set the froglight color based on the spiderlightrand of the brain
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=brain,type=husk] if entity @s[scores={spiderlightrand=0}] run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"minecraft:ochre_froglight"},Tags:["spider_light","body"]}
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=brain,type=husk] if entity @s[scores={spiderlightrand=1}] run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"minecraft:pearlescent_froglight"},Tags:["spider_light","body"]}
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=brain,type=husk] if entity @s[scores={spiderlightrand=2}] run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"minecraft:verdant_froglight"},Tags:["spider_light","body"]}

# execute at @s run ride @e[limit=1,sort=nearest,tag=spider_light,tag=body,type=block_display] mount @e[limit=1,sort=nearest,tag=spider_light,tag=brain,type=zombie]
execute at @s run ride @e[limit=1,sort=nearest,tag=spider_light,tag=body,type=block_display] mount @s
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=body,type=block_display] run data merge entity @s {transformation:[1.000f, 0.000f, 0.000f,-0.500f,0.000f, 1.000f, 0.000f,-0.500f,0.000f, 0.000f, 1.000f,-0.500f,0.000f, 0.000f, 0.000f,1.000f]}

# https://mlakuss.github.io/minecraft-display-entities-generator/

# leg 1 left middle (rotation: 0, 0, -25)
execute at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"minecraft:end_rod",Properties:{facing:"east"}},Tags:["spider_light","leg1"]}
execute at @s run ride @e[limit=1,sort=nearest,tag=spider_light,tag=leg1,type=block_display] mount @e[limit=1,sort=nearest,tag=spider_light,tag=body,type=block_display]
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=leg1,type=block_display] run data merge entity @s {transformation:[0.000f, 1.000f, 0.000f,-0.5f,-1.000f, 0.000f, 0.000f,0.0f,0.000f, 0.000f, 1.000f,-0.5f,0.000f, 0.000f, 0.000f,1.000f]}
                                                                                                                                                            
# leg 2 left back (rotation: 0, 30, -25)
execute at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"minecraft:end_rod",Properties:{facing:"east"}},Tags:["spider_light","leg2"]}
execute at @s run ride @e[limit=1,sort=nearest,tag=spider_light,tag=leg2,type=block_display] mount @e[limit=1,sort=nearest,tag=spider_light,tag=leg1,type=block_display]
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=leg2,type=block_display] run data merge entity @s {transformation:[0.000f, 1.000f, 0.000f,-0.5f,-1.000f, 0.000f, 0.000f,0.0f,0.000f, 0.000f, 1.000f,-0.5f,0.000f, 0.000f, 0.000f,1.000f]}

# leg 3 left front (rotation: 0, -30, -25)
execute at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"minecraft:end_rod",Properties:{facing:"east"}},Tags:["spider_light","leg3"]}
execute at @s run ride @e[limit=1,sort=nearest,tag=spider_light,tag=leg3,type=block_display] mount @e[limit=1,sort=nearest,tag=spider_light,tag=leg2,type=block_display]
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=leg3,type=block_display] run data merge entity @s {transformation:[0.000f, 1.000f, 0.000f,-0.5f,-1.000f, 0.000f, 0.000f,0.0f,0.000f, 0.000f, 1.000f,-0.5f,0.000f, 0.000f, 0.000f,1.000f]}

# leg 4 right middle (rotation: 0, 0, 25)
execute at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"minecraft:end_rod",Properties:{facing:"west"}},Tags:["spider_light","leg4"]}
execute at @s run ride @e[limit=1,sort=nearest,tag=spider_light,tag=leg4,type=block_display] mount @e[limit=1,sort=nearest,tag=spider_light,tag=leg3,type=block_display]
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=leg4,type=block_display] run data merge entity @s {transformation:[0.000f, 1.000f, 0.000f,-0.5f,-1.000f, 0.000f, 0.000f,0.0f,0.000f, 0.000f, 1.000f,-0.5f,0.000f, 0.000f, 0.000f,1.000f]}

# leg 5 right back (rotation: 0, 30, 25)
execute at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"minecraft:end_rod",Properties:{facing:"west"}},Tags:["spider_light","leg5"]}
execute at @s run ride @e[limit=1,sort=nearest,tag=spider_light,tag=leg5,type=block_display] mount @e[limit=1,sort=nearest,tag=spider_light,tag=leg4,type=block_display]
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=leg5,type=block_display] run data merge entity @s {transformation:[0.000f, 1.000f, 0.000f,-0.5f,-1.000f, 0.000f, 0.000f,0.0f,0.000f, 0.000f, 1.000f,-0.5f,0.000f, 0.000f, 0.000f,1.000f]}

# leg 6 right front (rotation: 0, -30, 25)
execute at @s run summon block_display ~-0.5 ~ ~-0.5 {block_state:{Name:"minecraft:end_rod",Properties:{facing:"west"}},Tags:["spider_light","leg6"]}
execute at @s run ride @e[limit=1,sort=nearest,tag=spider_light,tag=leg6,type=block_display] mount @e[limit=1,sort=nearest,tag=spider_light,tag=leg5,type=block_display]
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=leg6,type=block_display] run data merge entity @s {transformation:[0.000f, 1.000f, 0.000f,-0.5f,-1.000f, 0.000f, 0.000f,0.0f,0.000f, 0.000f, 1.000f,-0.5f,0.000f, 0.000f, 0.000f,1.000f]}

# /execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=leg1,type=block_display] run data merge entity @s {start_interpolation:-1,interpolation_duration:20,transformation:{right_rotation:[0f,0f,-0.25f,1f],translation:[-0.15f,-0.4f,-0.5f]}}

# set the loot table depending on the spiderlightrand of the brain
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=brain,type=husk] if entity @s[scores={spiderlightrand=0}] run data merge entity @e[limit=1,sort=nearest,type=spider,tag=spider_light] {DeathLootTable:"minecraft:blocks/ochre_froglight"}
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=brain,type=husk] if entity @s[scores={spiderlightrand=1}] run data merge entity @e[limit=1,sort=nearest,type=spider,tag=spider_light] {DeathLootTable:"minecraft:blocks/pearlescent_froglight"}
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=brain,type=husk] if entity @s[scores={spiderlightrand=2}] run data merge entity @e[limit=1,sort=nearest,type=spider,tag=spider_light] {DeathLootTable:"minecraft:blocks/verdant_froglight"}

# summon spider ~ ~ ~ {NoAI:1b,Passengers:[{id:"minecraft:block_display",Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:end_rod",Properties:{facing:"down"}}}],transformation:{translation:[-0.5f,-0.25f,-0.5f]},block_state:{Name:"minecraft:pearlescent_froglight"}}]}