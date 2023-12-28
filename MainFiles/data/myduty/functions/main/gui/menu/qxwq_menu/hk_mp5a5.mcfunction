replaceitem entity @s hotbar.0 tac:hk_mp5a5{AmmoCount:30,CurrentFireMode:2,Attachments:{Barrel:{id:"tac:muzzle_brake",Count:1b,tag:{Tags:["ban"]}},Stock:{id:"tac:light_stock",Count:1b,tag:{Tags:["ban"]}}},Tags:["kill","team_fight_tw1"]}
replaceitem entity @s inventory.0 tac:9mm_round{Tags:["kill","team_fight_tw18"]} 30
replaceitem entity @s inventory.1 tac:9mm_round{Tags:["kill","team_fight_tw18"]} 30
replaceitem entity @s inventory.2 tac:9mm_round{Tags:["kill","team_fight_tw18"]} 30
replaceitem entity @s inventory.3 tac:9mm_round{Tags:["kill","team_fight_tw18"]} 30

scoreboard players set @s team_fight_shop 0
scoreboard players set @s revive_thing 36

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