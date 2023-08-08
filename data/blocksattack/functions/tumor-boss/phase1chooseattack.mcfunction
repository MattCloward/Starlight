scoreboard players reset @s entityAge

execute store result score @s numSculklings if entity @e[type=magma_cube,tag=block_mob,distance=..150]

execute as @s if entity @s if score @s numSculklings < #handler numSculklings run function blocksattack:tumor-boss/reinforcements

execute if entity @s[scores={numSculklings=10..}] as @e[type=block_display,tag=eye_pupil,limit=1,sort=nearest] at @s positioned ~ ~-1 ~ run function blocksattack:tumor-boss/laserprep