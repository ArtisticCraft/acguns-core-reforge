replaceitem entity @s hotbar.1 tac:glock_18{AmmoCount:17,Tags:["kill","team_fight_tw2"]}
replaceitem entity @s inventory.9 tac:9mm_round{Tags:["kill","team_fight_tw9_12"]} 34


scoreboard players set @s team_fight_shop 0
scoreboard players set @s revive_thing_fwq 21

#防止套娃
replaceitem entity @s[nbt={Inventory:[{Slot:0b,tag:{Tags:["team_fight_tw2"]}}]}] hotbar.0 air
replaceitem entity @s[nbt={Inventory:[{Slot:2b,tag:{Tags:["team_fight_tw2"]}}]}] hotbar.2 air
replaceitem entity @s[nbt={Inventory:[{Slot:3b,tag:{Tags:["team_fight_tw2"]}}]}] hotbar.3 air
replaceitem entity @s[nbt={Inventory:[{Slot:9b,tag:{Tags:["team_fight_tw2"]}}]}] inventory.0 air
replaceitem entity @s[nbt={Inventory:[{Slot:10b,tag:{Tags:["team_fight_tw2"]}}]}] inventory.1 air
replaceitem entity @s[nbt={Inventory:[{Slot:11b,tag:{Tags:["team_fight_tw2"]}}]}] inventory.2 air
replaceitem entity @s[nbt={Inventory:[{Slot:12b,tag:{Tags:["team_fight_tw2"]}}]}] inventory.3 air
replaceitem entity @s[nbt={Inventory:[{Slot:-106b,tag:{Tags:["team_fight_tw2"]}}]}] weapon.offhand air
replaceitem entity @s[nbt={Inventory:[{Slot:8b,tag:{Tags:["team_fight_tw2"]}}]}] hotbar.8 air

replaceitem entity @s[nbt={Inventory:[{Slot:8b,tag:{Tags:["team_fight_tw9_12"]}}]}] hotbar.8 air
replaceitem entity @s[nbt={Inventory:[{Slot:-106b,tag:{Tags:["team_fight_tw9_12"]}}]}] weapon.offhand air
replaceitem entity @s[nbt={Inventory:[{Slot:9b,tag:{Tags:["team_fight_tw9_12"]}}]}] inventory.0 air
replaceitem entity @s[nbt={Inventory:[{Slot:10b,tag:{Tags:["team_fight_tw9_12"]}}]}] inventory.1 air
replaceitem entity @s[nbt={Inventory:[{Slot:11b,tag:{Tags:["team_fight_tw9_12"]}}]}] inventory.2 air
replaceitem entity @s[nbt={Inventory:[{Slot:12b,tag:{Tags:["team_fight_tw9_12"]}}]}] inventory.3 air
replaceitem entity @s[nbt={Inventory:[{Slot:0b,tag:{Tags:["team_fight_tw9_12"]}}]}] hotbar.0 air
replaceitem entity @s[nbt={Inventory:[{Slot:2b,tag:{Tags:["team_fight_tw9_12"]}}]}] hotbar.2 air
replaceitem entity @s[nbt={Inventory:[{Slot:3b,tag:{Tags:["team_fight_tw9_12"]}}]}] hotbar.3 air