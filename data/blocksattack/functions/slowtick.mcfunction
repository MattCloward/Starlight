schedule function blocksattack:slowtick 2t

# make particles around any item/itemframe named "Remnant"
execute as @e[nbt={Item:{tag:{display:{Name:'{"text":"Remnant"}'}}}}] at @s run particle enchant ~ ~1 ~ 0.25 0.25 0.25 1 1 force
execute as @a[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Remnant"}'}}}}] at @s run particle enchant ~ ~1 ~ 0.25 0.25 0.25 1 1 force