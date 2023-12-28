clear @s
function myduty:main/mode_5/random/map/main
function myduty:main/gui/revive_thing
function myduty:main/mode_5/start/team_armor
gamemode adventure @s
effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:resistance 2 100 true
tag @s remove cd
scoreboard players reset @s cd_time
scoreboard players reset @s skill_time
scoreboard players set @s revive_time 40
tag @s add revive

replaceitem entity @s hotbar.2 minecraft:iron_sword{Tags:["kill"],Unbreakable:1b,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"noName",Amount:20d,Operation:0,UUID:[I;7264,7271,2427,5194],Slot:mainhand},{AttributeName:"generic.movement_speed",Name:"noName",Amount:0.01d,Operation:0,UUID:[I;7166,2472,6621,6937],Slot:mainhand},{AttributeName:"generic.attack_speed",Name:"noName",Amount:-3d,Operation:0,UUID:[I;1915,2669,9394,5264],Slot:mainhand}]}
replaceitem entity @s hotbar.3 tac:light_grenade{Tags:["kill"]}
replaceitem entity @s weapon.offhand air

execute as @s at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2
scoreboard players reset @s death2