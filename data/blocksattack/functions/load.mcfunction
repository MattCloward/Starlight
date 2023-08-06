# these commands are run when the world is first opened or when 
# the /reload function is run

# print that the data pack is working (for testing purposes)
# say I'm working great!

function blocksattack:tick
function blocksattack:slowtick
function blocksattack:secondtick
function blocksattack:blockmob/blockmobtick
function blocksattack:spiderlight/spidermobtick
function blocksattack:animatetick1
function blocksattack:tumor-boss/tick
function blocksattack:tumor-boss/slowtick

scoreboard objectives add blockfound dummy

scoreboard objectives add blocksearchstart dummy
scoreboard objectives add blocksearchcast dummy

scoreboard objectives add spiderlightrand dummy
# the mod operator for the random block chosen for the spiderlight (set to 3 later)
scoreboard objectives add modop dummy

# used to keep track of the age of xp orbs and bloom removers
scoreboard objectives add entityAge dummy

scoreboard objectives add onSculkTimer dummy

# controls the search radius around the bloom-removers
scoreboard objectives add xStep dummy
scoreboard objectives add yStep dummy
scoreboard objectives add zStep dummy

# create a decay timer objective, set the fake player #blocksattackhandler's objective to exist,
# then check if they have a score and set it to a default value if they don't
# this is used to check how often blocks should decay around players
scoreboard objectives add decayTimer dummy
scoreboard players add #blocksattackhandler decayTimer 0
execute if score #blocksattackhandler decayTimer matches 0 run scoreboard players set #blocksattackhandler decayTimer 200

scoreboard objectives add sentienceTimer dummy
scoreboard players add #blocksattackhandler sentienceTimer 0
execute if score #blocksattackhandler sentienceTimer matches 0 run scoreboard players set #blocksattackhandler sentienceTimer 10

scoreboard objectives add bossTimer dummy
scoreboard players add #blocksattackhandler bossTimer 0
execute if score #blocksattackhandler bossTimer matches 0 run scoreboard players set #blocksattackhandler bossTimer 500


# whether a block has decayed or not near the player
scoreboard objectives add hasDecayed dummy

scoreboard objectives add health dummy

# used to count the number of sculklings near the boss
scoreboard objectives add numSculklings dummy

# objectives for the laser attack
scoreboard objectives add laserstart dummy
scoreboard objectives add lasercast dummy
scoreboard objectives add priming dummy

scoreboard objectives add bossanimationtick dummy