scoreboard players set @s hasDecayed 1
setblock ~ ~ ~ air
summon falling_block ~ ~ ~ {NoGravity:1b,BlockState:{Name:"sculk"},Tags:["decaying_block"],Motion:[0d,0.05d]}
playsound minecraft:particle.soul_escape block @a ~ ~ ~ 5 0.8