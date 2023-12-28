scoreboard players set @s kda_k 0
scoreboard players set @s kda_d 0
scoreboard players reset @s team_fight_ui
scoreboard players set @s team_fight_menu 8888
scoreboard players reset @s team_fight_shop
tag @s add menu_inventory_mode5
tag @s add skill
scoreboard players operation @s score = #mode_5_score_set mode_5_score_set

execute as @s run function myduty:main/mode_5/start/team_armor
replaceitem entity @s hotbar.2 minecraft:iron_sword{Tags:["kill"],Unbreakable:1b,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"noName",Amount:20d,Operation:0,UUID:[I;7264,7271,2427,5194],Slot:mainhand},{AttributeName:"generic.movement_speed",Name:"noName",Amount:0.01d,Operation:0,UUID:[I;7166,2472,6621,6937],Slot:mainhand},{AttributeName:"generic.attack_speed",Name:"noName",Amount:-3d,Operation:0,UUID:[I;1915,2669,9394,5264],Slot:mainhand}]}
replaceitem entity @s hotbar.3 tac:light_grenade{Tags:["kill"]}
function myduty:main/mode_5/random/gun/main
function myduty:main/gui/revive_thing
replaceitem entity @s hotbar.8 carrot_on_a_stick{Tags:["skill"],CustomModelData:2,display:{Name:'[{"text":"弹药补充","color":"red","italic": false,"bold": true},{"text":"(右键使用)","color":"dark_gray","italic": false,"bold": false}]',Lore:['[{"text":"-=[","color":"yellow","italic": false},{"text":"技能","color":"aqua","italic": false},{"text":"]=-","color":"yellow","italic": false}]','{"text":"使用后补充身上所有武器的弹药","color":"dark_gray","italic": false,"bold": true}']}}
scoreboard players set @s revive_thing_sk 51

title @s reset
title @s title {"text": "死亡竞赛","color": "gold","bold": true}
title @s subtitle {"text": "击杀所有其他玩家","color": "aqua"}
effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:resistance 2 100 false

function myduty:main/mode_5/random/map/main