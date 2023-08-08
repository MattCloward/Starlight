execute as @s run function blocksattack:tumor-boss/animations/eye/lookaround

# get a random value for the spawned spider (world time)
execute as @s store result score @s worldrand run time query gametime
# set the worldrand of the brain to world time % 3 (see load function)
execute as @s run scoreboard players operation @s worldrand %= #handler modop

execute as @s[scores={worldrand=0}] run schedule function blocksattack:tumor-boss/spewstarlights 21t
execute as @s[scores={worldrand=1}] run schedule function blocksattack:tumor-boss/spewskulklings 21t
execute as @s[scores={worldrand=2}] run schedule function blocksattack:tumor-boss/spewskulklings 21t
