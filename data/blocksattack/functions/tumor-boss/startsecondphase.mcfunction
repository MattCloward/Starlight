# make breaking sound
execute at @s run playsound entity.zombie.break_wooden_door hostile @a ~ ~ ~

# kill the sticks
execute run kill @e[tag=stick1,tag=shifter]
execute run kill @e[tag=stick2,tag=shifter]

execute run tag @e[tag=shifter] remove phase1
execute run tag @e[tag=shifter] add phase2

# make the boss drop
execute run data merge entity @s {NoAI:0b}
execute run effect give @s instant_health 2