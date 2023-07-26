# the brain of the shifter
summon ocelot ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","brain"],Silent:1b,NoAI:1b,PersistenceRequired:1b}
execute at @s run effect give @e[limit=1,sort=nearest,tag=shifter,tag=brain] invisibility 999999 1 true
execute at @s run effect give @e[limit=1,sort=nearest,tag=shifter,tag=brain] resistance 999999 5 true


# attach the sticks where the shifter hangs
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","stick1"],block_state:{Name:"minecraft:sculk_catalyst",Properties:{}},transformation:[1.0000f,0.0000f,0.0000f,1.0000f,0.0000f,-15.0000f,0.0000f,19.0000f,0.0000f,-0.0000f,-1.0000f,2.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=stick1] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]
summon interaction ~2.5 ~3 ~2.5 {height:16,response:true,Tags:["shifter","stick1"]}
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","stick2"],block_state:{Name:"minecraft:sculk_catalyst",Properties:{}},transformation:[1.0000f,0.0000f,0.0000f,3.0000f,0.0000f,-15.0000f,0.0000f,19.0000f,0.0000f,-0.0000f,-1.0000f,4.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=stick2] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]
summon interaction ~3 ~3 ~3 {height:16,response:true,Tags:["shifter","stick2"]}

# attach body parts
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","body_bottom"],block_state:{Name:"minecraft:sculk",Properties:{}},transformation:[5.6250f,0.0000f,0.0000f,-0.3125f,0.0000f,0.9375f,0.0000f,0.0000f,0.0000f,0.0000f,5.6875f,-0.3750f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=body_bottom] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","body_middle"],block_state:{Name:"minecraft:sculk",Properties:{}},transformation:[5.0000f,0.0000f,0.0000f,0.0000f,0.0000f,2.8125f,0.0000f,0.9375f,0.0000f,0.0000f,5.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=body_middle] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","body_top"],block_state:{Name:"minecraft:sculk",Properties:{}},transformation:[4.5000f,0.0000f,0.0000f,0.3125f,0.0000f,1.2500f,0.0000f,3.7500f,0.0000f,0.0000f,4.5625f,0.2500f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=body_top] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]

# attach body corner parts
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","back_right_corner"],block_state:{Name:"minecraft:sculk",Properties:{}},transformation:[-1.0669f,-0.1464f,-0.6250f,1.0000f,0.1831f,0.8536f,-0.6250f,0.3125f,0.6250f,-0.5000f,-0.8839f,0.5000f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=back_right_corner] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","front_left_corner"],block_state:{Name:"minecraft:sculk",Properties:{}},transformation:[1.0933f,0.4744f,0.1250f,3.9375f,-0.2402f,0.5287f,-1.0334f,0.8125f,-0.5563f,0.7039f,0.6920f,4.3750f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=front_left_corner] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","back_left_corner"],block_state:{Name:"minecraft:sculk",Properties:{}},transformation:[-0.8803f,-0.5637f,0.5396f,0.5625f,0.2747f,0.4050f,1.1094f,-0.5625f,-0.8439f,0.7199f,-0.2017f,4.9375f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=back_left_corner] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","front_right_corner"],block_state:{Name:"minecraft:sculk",Properties:{}},transformation:[-0.7958f,-0.6307f,-0.5546f,5.6875f,0.1373f,-0.6437f,0.9467f,0.0625f,-0.9541f,0.4334f,0.5989f,0.1250f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=front_right_corner] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]

# attach eye
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","eye_white"],block_state:{Name:"minecraft:white_concrete",Properties:{}},transformation:[-0.0000f,1.0000f,0.0000f,4.0625f,-1.2500f,-0.0000f,0.0000f,3.4375f,0.0000f,0.0000f,1.5000f,1.7500f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=eye_white] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["shifter","eye_pupil"],block_state:{Name:"minecraft:black_concrete",Properties:{}},transformation:[1.0000f,0.0000f,0.0000f,4.1875f,0.0000f,0.6875f,0.0000f,2.2500f,0.0000f,0.0000f,1.0000f,2.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
ride @e[limit=1,sort=nearest,tag=shifter,tag=eye_pupil] mount @e[limit=1,sort=nearest,tag=shifter,tag=brain]

bossbar add shifter {"text":"The Shifter"}
bossbar set shifter color purple