setblock ~ ~ ~ air
summon warden ~ ~ ~ {Tags:["mini_warden"],Attributes:[{Name:"generic.max_health",Base:20}],Health:20,CustomName:'[{"text":"Starlight Wardenling","color":"dark_blue"}]',Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
effect give @e[type=warden,tag=mini_warden] weakness infinite 2