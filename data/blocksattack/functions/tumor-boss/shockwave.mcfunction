# make particles
particle block sculk ~ ~ ~ 4 0 4 3 150

# play sound
playsound entity.generic.explode hostile @a ~ ~ ~ 5
playsound block.sculk.fall hostile @a ~ ~ ~ 5

# cause knockback
execute at @a[distance=..10] as @s run damage @a[sort=nearest,limit=1] 10 cramming by @s from @s

# remove airborn tag
tag @s remove airborn