# make breaking sound
execute at @s run playsound entity.zombie.break_wooden_door hostile @a ~ ~ ~

# kill the sticks
execute at @s run kill @e[tag=stick1,tag=shifter,distance=..5]
execute at @s run kill @e[tag=stick2,tag=shifter,distance=..5]

execute at @s run tag @e[tag=shifter,distance=..5] remove phase1
execute at @s run tag @e[tag=shifter,distance=..5] add phase2

# make the boss drop
execute run data merge entity @s {NoAI:0b}
execute run effect give @s instant_health 10
execute run effect give @s strength infinite 10 true
execute run effect give @s jump_boost infinite 10 true
execute run effect give @s speed infinite 3 true

execute at @s run summon interaction ~ ~ ~ {height:5,width:5,response:true,Tags:["shifter","bodyinteraction"]}

# set health score
execute at @s as @e[limit=1,sort=nearest,tag=shifter,tag=brain] store result score @s health run data get entity @s Health