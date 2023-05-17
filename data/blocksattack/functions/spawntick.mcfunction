# spawn stuff every 5 min
schedule function blocksattack:spawntick 150t

# TODO ,gamemode=!creative
execute run scoreboard players set @a[gamemode=!spectator] blocksearchstart 1