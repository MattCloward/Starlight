# the brain of the shifter
summon magma_cube ~-0.5 ~-0.5 ~-0.5 {Size:8,Tags:["shifter","brain","phase1"],Silent:1b,NoAI:1b,PersistenceRequired:1b,DeathLootTable:"",Attributes:[{Name:"generic.follow_range",Base:150.0},{Name:"generic.max_health",Base:20}],CustomName:'[{"text":"Starlight Tumor","color":"red"}]'}
execute at @s run effect give @e[limit=1,sort=nearest,tag=shifter,tag=brain] invisibility 999999 1 true
execute at @s run effect give @e[limit=1,sort=nearest,tag=shifter,tag=brain] resistance 999999 5 true

# set health score
execute at @s as @e[limit=1,sort=nearest,tag=shifter,tag=brain] store result score @s health run data get entity @s Health

# attach the sticks where the shifter hangs
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","stick1","phase1"],block_state:{Name:"minecraft:sculk_catalyst",Properties:{bloom:"false"}},transformation:[0.0000f,0.0000f,1.0000f,0.4286f,0.0000f,-15.0000f,0.0000f,15.5812f,1.0000f,-0.0000f,-0.0000f,-1.4935f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=stick1] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]
summon interaction ~-1.5 ~3 ~0.5 {height:8,response:true,Tags:["shifter","stick1"]}
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","stick2","phase1"],block_state:{Name:"minecraft:sculk_catalyst",Properties:{bloom:"false"}},transformation:[0.0000f,0.0000f,1.0000f,-1.5714f,0.0000f,-15.0000f,0.0000f,15.5812f,1.0000f,-0.0000f,-0.0000f,0.5065f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=stick2] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]
summon interaction ~0.5 ~3 ~-1.5 {height:8,response:true,Tags:["shifter","stick2","phase1"]}

# attach body parts
summon block_display ~-0.5 ~-2 ~-0.5 {Tags:["shifter","body_bottom","phase1"],block_state:{Name:"minecraft:sculk",Properties:{}},transformation:[0.0000f,0.0000f,-5.6250f,2.8036f,0.0000f,0.9375f,0.0000f,-3.4188f,5.6250f,0.0000f,0.0000f,-2.8060f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=body_bottom] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]
summon block_display ~-0.5 ~-2 ~-0.5 {Tags:["shifter","body_middle","phase1"],block_state:{Name:"minecraft:sculk",Properties:{}},transformation:[0.0000f,0.0000f,-5.0000f,2.4286f,0.0000f,2.8125f,0.0000f,-2.4813f,5.0000f,0.0000f,0.0000f,-2.4935f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=body_middle] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]
summon block_display ~-0.5 ~-2 ~-0.5 {Tags:["shifter","body_top","phase1"],block_state:{Name:"minecraft:sculk",Properties:{}},transformation:[0.0000f,0.0000f,-4.5625f,2.1786f,0.0000f,1.2500f,0.0000f,0.3312f,4.5000f,0.0000f,0.0000f,-2.1810f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=body_top] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]

# attach body corner parts
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","back_right_corner","phase1"],block_state:{Name:"minecraft:sculk",Properties:{}},transformation:[-0.6250f,0.5000f,0.8839f,1.9286f,0.1831f,0.8536f,-0.6250f,-3.1063f,-1.0669f,-0.1464f,-0.6250f,-1.4935f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=back_right_corner] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","front_left_corner","phase1"],block_state:{Name:"minecraft:sculk",Properties:{}},transformation:[0.5563f,-0.7039f,-0.6920f,-1.9464f,-0.2402f,0.5287f,-1.0334f,-2.6063f,1.0933f,0.4744f,0.1250f,1.4440f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=front_left_corner] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","back_left_corner","phase1"],block_state:{Name:"minecraft:sculk",Properties:{}},transformation:[0.8439f,-0.7199f,0.2017f,-2.5089f,0.2747f,0.4050f,1.1094f,-3.9813f,-0.8803f,-0.5637f,0.5396f,-1.9310f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=back_left_corner] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","front_right_corner","phase1"],block_state:{Name:"minecraft:sculk",Properties:{}},transformation:[0.9541f,-0.4334f,-0.5989f,2.3036f,0.1373f,-0.6437f,0.9467f,-3.3563f,-0.7958f,-0.6307f,-0.5546f,3.1940f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=front_right_corner] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]

# attach eye
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","eye_white","eye","phase1"],block_state:{Name:"minecraft:white_concrete",Properties:{}},transformation:[-0.0000f,0.0000f,-1.5000f,0.6786f,-1.2500f,-0.0000f,0.0000f,0.0187f,-0.0000f,1.0000f,0.0000f,1.5690f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=eye_white] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","eye_pupil","eye","phase1"],block_state:{Name:"minecraft:black_concrete",Properties:{}},transformation:[0.0000f,0.0000f,-1.0000f,0.4286f,0.0000f,0.6875f,0.0000f,-1.1688f,1.0000f,0.0000f,0.0000f,1.6940f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=eye_pupil] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]

execute at @s as @e[limit=1,sort=nearest,tag=shifter,tag=brain] run scoreboard players set @s priming 0

bossbar add shifter {"text":"Starlight Tumor","color":"purple","bold":true}
bossbar set shifter style notched_20
bossbar set shifter color purple
bossbar set shifter max 20

