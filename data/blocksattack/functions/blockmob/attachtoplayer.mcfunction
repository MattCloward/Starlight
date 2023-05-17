execute run tp @e[type=magma_cube,tag=block_mob,distance=..1.75,sort=nearest] ~ ~0.5 ~
execute run data merge entity @e[type=magma_cube,tag=block_mob,distance=..1.5,sort=nearest,limit=1] {OnGround:0b,wasOnGround:0b,FallDistance:0}
