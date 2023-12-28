function myduty:main/mode_5/gametime/gametime
effect clear @a
tag @a add skill
tellraw @a [{"text":"[","bold":true},{"text":"提示","bold":true,"color":"gold"},{"text":"]: ","bold":true,"color":"white"},{"text":"你的隐身效果已失效！","color":"red","bold": true}]
execute as @a run function myduty:main/mode_5/start/team_armor
replaceitem entity @a hotbar.2 minecraft:iron_sword{Tags:["kill"],Unbreakable:1b,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"noName",Amount:20d,Operation:0,UUID:[I;7264,7271,2427,5194],Slot:mainhand},{AttributeName:"generic.movement_speed",Name:"noName",Amount:0.01d,Operation:0,UUID:[I;7166,2472,6621,6937],Slot:mainhand},{AttributeName:"generic.attack_speed",Name:"noName",Amount:-3d,Operation:0,UUID:[I;1915,2669,9394,5264],Slot:mainhand}]}
replaceitem entity @a hotbar.3 tac:light_grenade{Tags:["kill"]}
replaceitem entity @a hotbar.8 carrot_on_a_stick{Tags:["skill"],CustomModelData:2,display:{Name:'[{"text":"弹药补充","color":"red","italic": false,"bold": true},{"text":"(右键使用)","color":"dark_gray","italic": false,"bold": false}]',Lore:['[{"text":"-=[","color":"yellow","italic": false},{"text":"技能","color":"aqua","italic": false},{"text":"]=-","color":"yellow","italic": false}]','{"text":"使用后补充身上所有武器的弹药","color":"dark_gray","italic": false,"bold": true}']}}
scoreboard players set @a revive_thing_sk 51

execute as @a at @s run function myduty:main/mode_5/random/gun/main
execute as @a at @s run function myduty:main/gui/revive_thing

scoreboard objectives remove start_timer_md5