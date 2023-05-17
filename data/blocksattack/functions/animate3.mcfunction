# TODO remove
# execute as @s run scoreboard players set @s animationstart 0

# leg 1 left middle (0, -10, -25)
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=leg1,type=block_display] run data merge entity @s {interpolation_duration:5,start_interpolation:-1,transformation:[0.893f, 0.423f, -0.157f,-0.05f,-0.416f, 0.906f, 0.073f,-0.45f,0.174f, 0.000f, 0.985f,-0.5f,0.000f, 0.000f, 0.000f,1.000f]}

# leg 2 left back (0, 40, -25)
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=leg2,type=block_display] run data merge entity @s {interpolation_duration:5,start_interpolation:-1,transformation:[0.694f, 0.423f, 0.583f,-0.4f,-0.324f, 0.906f, -0.272f,-0.3f,-0.643f, 0.000f, 0.766f,-0.50f,0.000f, 0.000f, 0.000f,1.000f]}

# leg 3 left front (rotation: 0, -20, -25)
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=leg3,type=block_display] run data merge entity @s {interpolation_duration:5,start_interpolation:-1,transformation:[0.852f, 0.423f, -0.310f,0.11f,-0.397f, 0.906f, 0.145f,-0.500f,0.342f, 0.000f, 0.940f,-0.35f,0.000f, 0.000f, 0.000f,1.000f]}

# leg 4 right middle (rotation: 0, -10, 25)
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=leg4,type=block_display] run data merge entity @s {interpolation_duration:5,start_interpolation:-1,transformation:[0.893f, -0.423f, -0.157f,-0.65f,0.416f, 0.906f, -0.073f,-0.825f,0.174f, 0.000f, 0.985f,-0.650f,0.000f, 0.000f, 0.000f,1.000f]}

# leg 5 right back (rotation: 0, 40, 25) TODO
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=leg5,type=block_display] run data merge entity @s {interpolation_duration:5,start_interpolation:-1,transformation:[0.694f, -0.423f, 0.583f,-0.875f,0.324f, 0.906f, 0.272f,-0.875f,-0.643f, 0.000f, 0.766f,0.3f,0.000f, 0.000f, 0.000f,1.000f]}

# # leg 6 right front (rotation: 0, -20, 25) TODO
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=leg6,type=block_display] run data merge entity @s {interpolation_duration:5,start_interpolation:-1,transformation:[0.852f, -0.423f, -0.310f,-0.55f,0.397f, 0.906f, -0.145f,-0.67f,0.342f, 0.000f, 0.940f,-0.950f,0.000f, 0.000f, 0.000f,1.000f]}

# TODO remove
# execute as @s at @s run schedule function blocksattack:animate2-set 5t
# execute as @e[limit=1,sort=nearest,type=spider,tag=spider_light,nbt=!{Motion:[0.0,0.0,0.0]}] run schedule function blocksattack:animate2 5t
