replaceitem entity @s[team=blue] hotbar.8 minecraft:carrot_on_a_stick{Tags:["skill"],CustomModelData:5,display:{Name:'[{"text":"感应地雷","color":"red","italic": false,"bold": true},{"text":"(右键使用)","color":"dark_gray","italic": false,"bold": false}]',Lore:['[{"text":"-=[","color":"yellow","italic": false},{"text":"技能","color":"aqua","italic": false},{"text":"]=-","color":"yellow","italic": false}]','{"text":"放置一个地雷,敌人靠近就会爆炸","color":"dark_gray","italic": false,"bold": true}','{"text":"可以被摧毁","color":"dark_gray","italic": false,"bold": true}']}}
replaceitem entity @s[team=red] hotbar.8 minecraft:carrot_on_a_stick{Tags:["skill"],CustomModelData:6,display:{Name:'[{"text":"感应地雷","color":"red","italic": false,"bold": true},{"text":"(右键使用)","color":"dark_gray","italic": false,"bold": false}]',Lore:['[{"text":"-=[","color":"yellow","italic": false},{"text":"技能","color":"aqua","italic": false},{"text":"]=-","color":"yellow","italic": false}]','{"text":"放置一个地雷,敌人靠近就会爆炸","color":"dark_gray","italic": false,"bold": true}','{"text":"可以被摧毁","color":"dark_gray","italic": false,"bold": true}']}}

scoreboard players set @s team_fight_skill 0
scoreboard players set @s revive_thing_sk 53

replaceitem entity @s[nbt={Inventory:[{Slot:0b,tag:{Tags:["skill"]}}]}] hotbar.0 air
replaceitem entity @s[nbt={Inventory:[{Slot:1b,tag:{Tags:["skill"]}}]}] hotbar.1 air
replaceitem entity @s[nbt={Inventory:[{Slot:2b,tag:{Tags:["skill"]}}]}] hotbar.2 air
replaceitem entity @s[nbt={Inventory:[{Slot:3b,tag:{Tags:["skill"]}}]}] hotbar.3 air
replaceitem entity @s[nbt={Inventory:[{Slot:9b,tag:{Tags:["skill"]}}]}] inventory.0 air
replaceitem entity @s[nbt={Inventory:[{Slot:10b,tag:{Tags:["skill"]}}]}] inventory.1 air
replaceitem entity @s[nbt={Inventory:[{Slot:11b,tag:{Tags:["skill"]}}]}] inventory.2 air
replaceitem entity @s[nbt={Inventory:[{Slot:12b,tag:{Tags:["skill"]}}]}] inventory.3 air
replaceitem entity @s[nbt={Inventory:[{Slot:18b,tag:{Tags:["skill"]}}]}] inventory.9 air
replaceitem entity @s[nbt={Inventory:[{Slot:-106b,tag:{Tags:["skill"]}}]}] weapon.offhand air