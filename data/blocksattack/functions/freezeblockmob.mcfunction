data merge entity @s {NoAI:1b,Silent:1b}
# teleport the mob to the nearest block
execute as @s at @s align xyz positioned ^ ^ ^ run tp @s ~0.5 ~ ~0.5 90 0
# teleport them to the ground
execute as @s at @s if block ~ ~-0.5 ~ air run teleport @s ~ ~-0.5 ~
# set their motion to 0 and their fall distance to 0
execute as @s run data merge entity @s {Motion:[0.0,0.0,0.0],OnGround:1b,wasOnGround:1b,FallDistance:0}

# TODO remove
# execute as @s at @s anchored eyes positioned ^ ^ ^ align xyz run tp @s ~0.5 ~ ~0.5
# execute as @s at @s anchored eyes positioned ^ ^ ^ align xyz run tp @s ~0.5 ~ ~0.5