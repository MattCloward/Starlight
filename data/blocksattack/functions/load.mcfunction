# these commands are run when the world is first opened or when 
# the /reload function is run

# print that the data pack is working (for testing purposes)
# say I'm working great!

function blocksattack:tick
function blocksattack:slowtick
function blocksattack:secondtick
function blocksattack:blockmob/blockmobtick
function blocksattack:blockmob/secondtick
function blocksattack:spiderlight/spidermobtick
function blocksattack:spiderlight/secondtick
function blocksattack:animatetick1
function blocksattack:tumor-boss/tick
function blocksattack:tumor-boss/slowtick

scoreboard objectives add blockfound dummy

scoreboard objectives add blocksearchstart dummy
scoreboard objectives add blocksearchcast dummy

scoreboard objectives add worldrand dummy
# the mod operator for the random block chosen for the spiderlight (set to 3 later)
scoreboard objectives add modop dummy

# used to keep track of the age of xp orbs and bloom removers
scoreboard objectives add entityAge dummy

# how long a player has been standing on sculk
scoreboard objectives add onSculkTimer dummy

# controls the search radius around the bloom-removers
scoreboard objectives add xStep dummy
scoreboard objectives add yStep dummy
scoreboard objectives add zStep dummy

scoreboard objectives add modop dummy
scoreboard players add #handler modop 0
execute if score #handler modop matches 0 run scoreboard players set #handler modop 3

# create a decay timer objective, set the fake player #handler's objective to exist,
# then check if they have a score and set it to a default value if they don't
# this is used to check how often blocks should decay around players
scoreboard objectives add decayTimer dummy
scoreboard players add #handler decayTimer 0
execute if score #handler decayTimer matches 0 run scoreboard players set #handler decayTimer 200

# controls the duration required to be on sculk before blocks become sentient 
scoreboard objectives add sentienceTimer dummy
scoreboard players add #handler sentienceTimer 0
execute if score #handler sentienceTimer matches 0 run scoreboard players set #handler sentienceTimer 10

# controls the frequency of boss attacks in ticks
scoreboard objectives add bossTimer dummy
scoreboard players add #handler bossTimer 0
execute if score #handler bossTimer matches 0 run scoreboard players set #handler bossTimer 500

# controls the age in seconds xp orbs must be before summoning bloom
scoreboard objectives add xpAge dummy
scoreboard players add #handler xpAge 0
execute if score #handler xpAge matches 0 run scoreboard players set #handler xpAge 5

# controls how often spiderlights can drop xp
scoreboard objectives add xpTimer dummy
scoreboard players add #handler xpTimer 0
execute if score #handler xpTimer matches 0 run scoreboard players set #handler xpTimer 10

# whether a block has decayed or not near the player
scoreboard objectives add hasDecayed dummy

# the health of the boss, as a score to protect its actual health
scoreboard objectives add health dummy

# used to count the number of sculklings near the boss
scoreboard objectives add numSculklings dummy
# add max number of sculklings allowed to the handler
scoreboard players add #handler numSculklings 0
execute if score #handler numSculklings matches 0 run scoreboard players set #handler numSculklings 15

# objectives for the laser attack
scoreboard objectives add laserstart dummy
scoreboard objectives add lasercast dummy
scoreboard objectives add priming dummy

scoreboard objectives add bossanimationtick dummy

# the duration in seconds that the boss is invulnerable
scoreboard objectives add invulnerable dummy