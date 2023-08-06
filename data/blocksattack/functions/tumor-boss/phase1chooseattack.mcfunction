scoreboard players reset @s entityAge

execute store result score @s numSculklings if entity @e[type=magma_cube,tag=block_mob,distance=..150]

execute if entity @s[scores={numSculklings=..10}] run function blocksattack:tumor-boss/reinforcements

# TODO add other attacks here
# execute if entity @s[scores={numSculklings=10..,health=..20}] run scoreboard players add @s health 1
# execute if entity @s[scores={numSculklings=10..}] as @e[type=block_display,tag=eye_pupil,limit=1,sort=nearest] at @s positioned ~ ~-1 ~ run function blocksattack:tumor-boss/laserstart
execute if entity @s[scores={numSculklings=10..}] as @e[type=block_display,tag=eye_pupil,limit=1,sort=nearest] at @s positioned ~ ~-1 ~ run function blocksattack:tumor-boss/laserprep