# make breaking sound
execute at @s run playsound entity.zombie.break_wooden_door hostile @a ~ ~ ~

# kill the sticks
execute at @s run kill @e[tag=stick1,tag=shifter,distance=..5]
execute at @s run kill @e[tag=stick2,tag=shifter,distance=..5]

execute at @s run tag @e[tag=shifter,distance=..5] remove phase1
execute at @s run tag @e[tag=shifter,distance=..5] add phase2

# make the boss drop
execute run data merge entity @s {NoAI:0b}
execute run effect give @s instant_health 3
execute run effect give @s strength infinite 10 true
execute run effect give @s jump_boost infinite 10 true
execute run effect give @s speed infinite 3 true