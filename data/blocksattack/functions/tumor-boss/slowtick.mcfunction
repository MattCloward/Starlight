schedule function blocksattack:tumor-boss/slowtick 10t

# commands handling boss bar
execute at @e[tag=shifter,tag=brain] run bossbar set shifter players @a[distance=..200]
execute as @e[tag=shifter,tag=brain] store result bossbar shifter value run data get entity @s Health
execute unless entity @e[limit=1,sort=nearest,tag=shifter,tag=brain] run bossbar remove shifter

# break all blocks within the boss
execute as @e[tag=shifter,tag=brain,tag=phase1] at @s positioned ~2 ~2 ~2 run fill ~-2 ~-3 ~-2 ~4 ~4 ~4 air 
execute as @e[type=interaction,tag=shifter,tag=stick1,tag=phase1] at @s positioned ~ ~ ~ run fill ~ ~ ~ ~ ~7 ~ air destroy
execute as @e[type=block_display,tag=shifter,tag=stick2,tag=phase1] at @s positioned ~ ~ ~ run fill ~ ~ ~ ~ ~7 ~ air destroy

# if player touches a block display, damage them
execute as @e[tag=shifter,tag=brain] at @s positioned ~2 ~2 ~2 if entity @a[distance=..4,limit=1,sort=nearest] run damage @a[limit=1,sort=nearest] 10 mob_attack by @s
execute as @e[type=interaction,tag=shifter,tag=stick1] at @s positioned ~ ~4 ~ if entity @a[distance=..2,limit=1,sort=nearest] run damage @a[limit=1,sort=nearest] 10 mob_attack by @s
execute as @e[type=interaction,tag=shifter,tag=stick1] at @s positioned ~ ~6 ~ if entity @a[distance=..2,limit=1,sort=nearest] run damage @a[limit=1,sort=nearest] 10 mob_attack by @s
execute as @e[type=interaction,tag=shifter,tag=stick1] at @s positioned ~ ~8 ~ if entity @a[distance=..2,limit=1,sort=nearest] run damage @a[limit=1,sort=nearest] 10 mob_attack by @s
execute as @e[type=interaction,tag=shifter,tag=stick1] at @s positioned ~ ~10 ~ if entity @a[distance=..2,limit=1,sort=nearest] run damage @a[limit=1,sort=nearest] 10 mob_attack by @s
execute as @e[type=interaction,tag=shifter,tag=stick1] at @s positioned ~ ~12 ~ if entity @a[distance=..2,limit=1,sort=nearest] run damage @a[limit=1,sort=nearest] 10 mob_attack by @s
execute as @e[type=interaction,tag=shifter,tag=stick1] at @s positioned ~ ~14 ~ if entity @a[distance=..2,limit=1,sort=nearest] run damage @a[limit=1,sort=nearest] 10 mob_attack by @s

execute as @e[type=interaction,tag=shifter,tag=stick2] at @s positioned ~ ~4 ~ if entity @a[distance=..2,limit=1,sort=nearest] run damage @a[limit=1,sort=nearest] 10 mob_attack by @s
execute as @e[type=interaction,tag=shifter,tag=stick2] at @s positioned ~ ~6 ~ if entity @a[distance=..2,limit=1,sort=nearest] run damage @a[limit=1,sort=nearest] 10 mob_attack by @s
execute as @e[type=interaction,tag=shifter,tag=stick2] at @s positioned ~ ~8 ~ if entity @a[distance=..2,limit=1,sort=nearest] run damage @a[limit=1,sort=nearest] 10 mob_attack by @s
execute as @e[type=interaction,tag=shifter,tag=stick2] at @s positioned ~ ~10 ~ if entity @a[distance=..2,limit=1,sort=nearest] run damage @a[limit=1,sort=nearest] 10 mob_attack by @s
execute as @e[type=interaction,tag=shifter,tag=stick2] at @s positioned ~ ~12 ~ if entity @a[distance=..2,limit=1,sort=nearest] run damage @a[limit=1,sort=nearest] 10 mob_attack by @s
execute as @e[type=interaction,tag=shifter,tag=stick2] at @s positioned ~ ~14 ~ if entity @a[distance=..2,limit=1,sort=nearest] run damage @a[limit=1,sort=nearest] 10 mob_attack by @s

# remove intermediates of boss
execute as @e[type=magma_cube,nbt={Size:7}] run data merge entity @s {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:""}
execute as @e[type=magma_cube,nbt={Size:6}] run data merge entity @s {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:""}
execute as @e[type=magma_cube,nbt={Size:5}] run data merge entity @s {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:""}
execute as @e[type=magma_cube,nbt={Size:4}] run data merge entity @s {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:""}
execute as @e[type=magma_cube,nbt={Size:3}] run data merge entity @s {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:""}
execute as @e[type=magma_cube,nbt={Size:2}] run data merge entity @s {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:""}
