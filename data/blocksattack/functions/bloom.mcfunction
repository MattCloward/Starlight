# spawn a sculk catalyst
execute at @s run fill ~ ~ ~ ~ ~ ~ sculk_catalyst keep
# summon a baby zombie that is silent, invisible, and doesn't drop anything
execute at @s run summon zombie ~1 ~ ~1 {Tags:["bloom"],Silent:1b,ActiveEffects:[{Id:14,Duration:100,ShowParticles:0b}],DeathLootTable:"minecraft:empty",IsBaby:1b}
# kill the baby zombie in the presence of the catalyst (OVERKILL)
execute at @s run damage @e[type=zombie,tag=bloom,sort=nearest,limit=1] 100000
# place an invisible block display at the catalyst that will be responsible for removing it (see tick function an bloom-remove)
execute at @s run summon block_display ~ ~ ~ {Tags:["bloom_remover"]}
# kill the xp orb responsible for the bloom (and any others nearby)
execute at @s run kill @e[type=experience_orb,distance=0..1]