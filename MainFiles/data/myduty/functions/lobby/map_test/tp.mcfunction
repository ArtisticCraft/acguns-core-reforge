clear @s
scoreboard players set @s team_fight_ui 0
scoreboard players set @s team_fight_menu 0
scoreboard players set @s team_fight_shop 0
scoreboard players reset @s lobby_ui
tag @s add menu_inventory
tag @s remove ready
tag @s remove ready_yes
team join map_test
teleport @s 194 102 -360 -90 0
playsound ui.button.click master @s 194 102 -360 1 1

replaceitem entity @s hotbar.2 minecraft:iron_sword{Tags:["kill"],Unbreakable:1b,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"noName",Amount:20d,Operation:0,UUID:[I;7264,7271,2427,5194],Slot:mainhand},{AttributeName:"generic.movement_speed",Name:"noName",Amount:0.01d,Operation:0,UUID:[I;7166,2472,6621,6937],Slot:mainhand},{AttributeName:"generic.attack_speed",Name:"noName",Amount:-3d,Operation:0,UUID:[I;1915,2669,9394,5264],Slot:mainhand}]}