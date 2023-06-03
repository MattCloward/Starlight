setblock ~ ~ ~ air
summon spider
execute at @s as @e[limit=1,sort=nearest,type=spider,tag=!spider_light] run function blocksattack:spiderlight/spawnspiderlight