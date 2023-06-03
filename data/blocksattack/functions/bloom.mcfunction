# spawn a sculk catalyst
execute at @s run fill ~ ~ ~ ~ ~ ~ sculk_catalyst keep
# make the block below the sculk catalyst be sculk too
execute at @s if block ~ ~-1 ~ #sculk_replaceable run setblock ~ ~-1 ~ sculk
# summon a baby zombie that is silent, invisible, and doesn't drop anything
execute at @s run summon zombie ~1 ~ ~1 {Tags:["bloom"],Silent:1b,ActiveEffects:[{Id:14,Duration:100,ShowParticles:0b}],DeathLootTable:"minecraft:empty",IsBaby:1b}
# kill the baby zombie in the presence of the catalyst (OVERKILL)
execute at @s run damage @e[type=zombie,tag=bloom,sort=nearest,limit=1] 100000
# place an invisible block display at the catalyst that will be responsible for removing it (see tick function and bloom-remove)
# for debugging, add this: block_state:{Name:"minecraft:ochre_froglight"}
execute at @s align xyz positioned ^ ^ ^ run summon block_display ~0.5 ~ ~0.5 {Tags:["bloom_remover","not_activated"]}

# kill the xp orb responsible for the bloom (and any others within the same block)
execute at @s run kill @e[type=experience_orb,distance=0..1]