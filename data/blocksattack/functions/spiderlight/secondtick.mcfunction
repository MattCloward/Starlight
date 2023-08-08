schedule function blocksattack:spiderlight/secondtick 1s

# give age to spiderlights
execute as @e[type=husk,tag=brain,tag=spider_light] run scoreboard players add @s entityAge 1
execute as @e[type=husk,tag=brain,tag=spider_light] if score @s entityAge >= #handler xpTimer at @s run function blocksattack:spiderlight/summonxp