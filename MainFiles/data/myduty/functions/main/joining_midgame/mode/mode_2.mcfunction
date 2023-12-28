scoreboard players set @s kda_k 0
scoreboard players set @s kda_d 0
scoreboard players reset @s team_fight_ui
scoreboard players set @s team_fight_menu 8888
scoreboard players reset @s team_fight_shop
tag @s add menu_inventory_mode2

replaceitem entity @s hotbar.0 tac:ak47{AmmoCount:30,CurrentFireMode:2,Tags:["kill","team_fight_tw1"]}
replaceitem entity @s inventory.0 tac:762x39{Tags:["kill","team_fight_tw18"]} 24
replaceitem entity @s inventory.1 tac:762x39{Tags:["kill","team_fight_tw18"]} 22
replaceitem entity @s inventory.2 tac:762x39{Tags:["kill","team_fight_tw18"]} 22
replaceitem entity @s inventory.3 tac:762x39{Tags:["kill","team_fight_tw18"]} 22
replaceitem entity @s hotbar.2 minecraft:iron_sword{Tags:["kill"],Unbreakable:1b,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"noName",Amount:20d,Operation:0,UUID:[I;7264,7271,2427,5194],Slot:mainhand},{AttributeName:"generic.movement_speed",Name:"noName",Amount:0.01d,Operation:0,UUID:[I;7166,2472,6621,6937],Slot:mainhand},{AttributeName:"generic.attack_speed",Name:"noName",Amount:-3d,Operation:0,UUID:[I;1915,2669,9394,5264],Slot:mainhand}]}
replaceitem entity @s hotbar.3 tac:light_grenade{Tags:["kill"]}
function myduty:main/team_armor

title @s reset
title @s title {"text": "军备竞赛","color": "gold","bold": true}
title @s subtitle {"text": "击杀获得新武器","color": "aqua"}
effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:resistance 6 100 false
function myduty:main/map_tp