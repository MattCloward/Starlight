# these commands are run when the world is first opened or when 
# the /reload function is run

# print that the data pack is working (for testing purposes)
# say I'm working great!

function blocksattack:tick
# for spawning stuff
function blocksattack:spawntick
# function blocksattack:secondtick
function blocksattack:animatetick1

scoreboard objectives add blockfound dummy

scoreboard objectives add blocksearchstart dummy
scoreboard objectives add blocksearchcast dummy

# TODO remove
scoreboard objectives add animationstart dummy