scoreboard players reset @s bonestart

# summon the temporary entity
summon marker ~ ~ ~ {Tags:["direction"]}
tp @e[type=marker,tag=direction] @a[limit=1,sort=nearest]

# get the coordinates of the player and the entity
execute store result score #playerX pos run data get entity @s Pos[0] 1000
execute store result score #playerY pos run data get entity @s Pos[1] 1000
execute store result score #playerZ pos run data get entity @s Pos[2] 1000
# execute store result score #targetX pos as @e[type=marker,tag=direction,limit=1] run data get entity @s Pos[0] 1000
# execute store result score #targetY pos as @e[type=marker,tag=direction,limit=1] run data get entity @s Pos[1] 1000
# execute store result score #targetZ pos as @e[type=marker,tag=direction,limit=1] run data get entity @s Pos[2] 1000
execute store result score #targetX pos as @a[limit=1,sort=nearest] run data get entity @s Pos[0] 1000
execute store result score #targetY pos as @e[limit=1,sort=nearest] run data get entity @s Pos[1] 1000
execute store result score #targetZ pos as @e[limit=1,sort=nearest] run data get entity @s Pos[2] 1000



# do the math
scoreboard players operation #targetX pos -= #playerX pos
scoreboard players operation #targetY pos -= #playerY pos
scoreboard players operation #targetZ pos -= #playerZ pos

# summon the projectile entity
summon fireball ^ ^ ^1 {Tags:["projectile"]}

# apply motion to projectile
execute store result entity @e[type=fireball,tag=projectile,limit=1] Motion[0] double 0.001 run scoreboard players get #targetX pos
execute store result entity @e[type=fireball,tag=projectile,limit=1] Motion[1] double 0.001 run scoreboard players get #targetY pos
execute store result entity @e[type=fireball,tag=projectile,limit=1] Motion[2] double 0.001 run scoreboard players get #targetZ pos

# clean up, ready for the next player
tag @e[tag=projectile] remove projectile
kill @e[tag=direction]