# these commands are run when the world is first opened or when 
# the /reload function is run

# print that the data pack is working (for testing purposes)
# say I'm working great!

function blocksattack:tick
# function blocksattack:secondtick
function blocksattack:animatetick1

scoreboard objectives add blockfound dummy

scoreboard objectives add blocksearchstart dummy
scoreboard objectives add blocksearchcast dummy

scoreboard objectives add spiderlightrand dummy
# the mod operator for the random block chosen for the spiderlight (set to 3 later)
scoreboard objectives add modop dummy

# used to keep track of the age of xp orbs and bloom removers
scoreboard objectives add entityAge dummy

scoreboard objectives add onSculkTimer dummy