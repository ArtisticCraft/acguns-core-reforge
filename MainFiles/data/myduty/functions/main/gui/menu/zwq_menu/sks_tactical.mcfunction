replaceitem entity @s hotbar.0 tac:sks_tactical{AmmoCount:20,Attachments:{Scope:{id:"tac:qmk152",Count:1b,tag:{Tags:["ban"]}},Stock:{id:"tac:weighted_stock",Count:1b,tag:{Tags:["ban"]}},Under_Barrel:{id:"tac:specialised_grip",Count:1b,tag:{Tags:["ban"]}}},Tags:["kill","team_fight_tw1"]}
replaceitem entity @s inventory.0 tac:762x39{Tags:["kill","team_fight_tw18"]} 15
replaceitem entity @s inventory.1 tac:762x39{Tags:["kill","team_fight_tw18"]} 15
replaceitem entity @s inventory.2 tac:762x39{Tags:["kill","team_fight_tw18"]} 15
replaceitem entity @s inventory.3 tac:762x39{Tags:["kill","team_fight_tw18"]} 15

scoreboard players set @s team_fight_shop 0
scoreboard players set @s revive_thing 16

#防止套娃
replaceitem entity @s[nbt={Inventory:[{Slot:1b,tag:{Tags:["team_fight_tw1"]}}]}] hotbar.1 air
replaceitem entity @s[nbt={Inventory:[{Slot:2b,tag:{Tags:["team_fight_tw1"]}}]}] hotbar.2 air
replaceitem entity @s[nbt={Inventory:[{Slot:3b,tag:{Tags:["team_fight_tw1"]}}]}] hotbar.3 air
replaceitem entity @s[nbt={Inventory:[{Slot:18b,tag:{Tags:["team_fight_tw1"]}}]}] inventory.9 air
replaceitem entity @s[nbt={Inventory:[{Slot:-106b,tag:{Tags:["team_fight_tw1"]}}]}] weapon.offhand air
replaceitem entity @s[nbt={Inventory:[{Slot:8b,tag:{Tags:["team_fight_tw1"]}}]}] hotbar.8 air

replaceitem entity @s[nbt={Inventory:[{Slot:8b,tag:{Tags:["team_fight_tw18"]}}]}] hotbar.8 air
replaceitem entity @s[nbt={Inventory:[{Slot:-106b,tag:{Tags:["team_fight_tw18"]}}]}] weapon.offhand air
replaceitem entity @s[nbt={Inventory:[{Slot:18b,tag:{Tags:["team_fight_tw18"]}}]}] inventory.9 air
replaceitem entity @s[nbt={Inventory:[{Slot:1b,tag:{Tags:["team_fight_tw18"]}}]}] hotbar.1 air
replaceitem entity @s[nbt={Inventory:[{Slot:2b,tag:{Tags:["team_fight_tw18"]}}]}] hotbar.2 air
replaceitem entity @s[nbt={Inventory:[{Slot:3b,tag:{Tags:["team_fight_tw18"]}}]}] hotbar.3 air