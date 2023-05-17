# leg 1 left middle (0, 0, -25)
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=leg1,type=block_display] run data merge entity @s {interpolation_duration:10,start_interpolation:-1,transformation:[0.906f, 0.423f, 0.000f, -0.15f,-0.423f, 0.906f, 0.000f, -0.4f,0.000f, 0.000f, 1.000f, -0.5f,0.000f, 0.000f, 0.000f,1.000f]}

# leg 2 left back (0, 30, -25)
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=leg2,type=block_display] run data merge entity @s {interpolation_duration:10,start_interpolation:-1,transformation:[0.785f, 0.423f, 0.453f,-0.35f,-0.366f, 0.906f, -0.211f,-0.3f,-0.500f, 0.000f, 0.866f,-0.5f,0.000f, 0.000f, 0.000f,1.000f]}

# leg 3 left front (rotation: 0, -30, -25)
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=leg3,type=block_display] run data merge entity @s {interpolation_duration:10,start_interpolation:-1,transformation:[0.785f, 0.423f, -0.453f,0.11f,-0.366f, 0.906f, 0.211f,-0.515f,0.500f, 0.000f, 0.866f,-0.35f,0.000f, 0.000f, 0.000f,1.000f]}

# leg 4 right middle (rotation: 0, 0, 25)
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=leg4,type=block_display] run data merge entity @s {interpolation_duration:5,start_interpolation:-1,transformation:[0.906f, -0.423f, 0.000f,-0.75f,0.423f, 0.906f, 0.000f, -0.825f,0.000f, 0.000f, 1.000f, -0.5f,0.000f, 0.000f, 0.000f,1.000f]}

# leg 5 right back (rotation: 0, 30, 25)
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=leg5,type=block_display] run data merge entity @s {interpolation_duration:5,start_interpolation:-1,transformation:[0.785f, -0.423f, 0.453f,-0.875f,0.366f, 0.906f, 0.211f,-0.875f,-0.500f, 0.000f, 0.866f,0.15f,0.000f, 0.000f, 0.000f,1.000f]}

# leg 6 right front (rotation: 0, -30, 25)
execute at @s as @e[limit=1,sort=nearest,tag=spider_light,tag=leg6,type=block_display] run data merge entity @s {interpolation_duration:5,start_interpolation:-1,transformation:[0.785f, -0.423f, -0.453f, -0.425f,0.366f, 0.906f, -0.211f,-0.67f,0.500f, 0.000f, 0.866f,-1.0f,0.000f, 0.000f, 0.000f,1f]}
