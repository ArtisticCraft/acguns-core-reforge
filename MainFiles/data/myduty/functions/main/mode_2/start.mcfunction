scoreboard objectives add start_timer dummy
scoreboard objectives add kda_k dummy [{"text":"["},{"text":"击杀榜","color":"red","bold":true},{"text":"]"}]
scoreboard objectives add kda_d deathCount
scoreboard players set @a kda_k 0
scoreboard players set @a kda_d 0
scoreboard players set #mvp_blue kda_k 0
scoreboard players set #mvp_red kda_k 0
scoreboard players set #max_blue kda_k 0
scoreboard players set #max_red kda_k 0
scoreboard players reset @a team_fight_ui
scoreboard players set @a team_fight_menu 8888
scoreboard players reset @a team_fight_shop
scoreboard objectives setdisplay sidebar kda_k
scoreboard objectives add kill playerKillCount
scoreboard objectives add death deathCount
scoreboard objectives add death2 dummy
team modify blue nametagVisibility hideForOtherTeams
team modify red nametagVisibility hideForOtherTeams
tag @a add menu_inventory_mode2

#HUD
bossbar add mode_2_hud [{"translate":"space.-2"},{"text":"\uea01","font": "minecraft:hud"}]
bossbar set mode_2_hud players @a
bossbar add mode_2_score {"text":"","extra":[{"text":"[","bold":true},{"text":"特别小组","bold":true,"color":"blue"},{"text":"]","bold":true},{"text":" "},{"score":{"name":"#max_blue","objective":"kda_k"}},{"selector": "@e[tag=blue_score_10,limit=1]"},{"translate":"space.29"},{"text": "020","bold": true},{"translate":"space.29"},{"selector": "@e[tag=red_score_10,limit=1]"},{"score":{"name":"#max_red","objective":"kda_k"}},{"text":" "},{"text":"[","bold":true},{"text":"战术核心","bold":true,"color":"red"},{"text":"]","bold":true}]}
bossbar set mode_2_score players @a
function myduty:main/mode_2/score/show_score
#倒计时
scoreboard objectives add gametime_min dummy
scoreboard objectives add gametime_sec dummy
scoreboard players operation @e[tag=gametime] gametime_min = @e[tag=gametime] gametime_set
scoreboard players set @e[tag=gametime] gametime_sec 0
execute as @e[tag=gametime] run function myduty:main/mode_2/gametime/gametime_10
bossbar add gametime {"text":"","extra":[{"selector": "@e[tag=gametime_min_10,limit=1]","bold":true},{"score":{"name":"@e[tag=gametime,limit=1]","objective":"gametime_min"},"bold":true},{"text":":","bold":true},{"selector": "@e[tag=gametime_sec_10,limit=1]","bold":true},{"score": {"objective":"gametime_sec","name": "@e[tag=gametime,limit=1]"},"bold": true},{"selector": "@e[tag=gametime_sec_0,limit=1]"}]}
bossbar set gametime players @a

replaceitem entity @a hotbar.0 tac:ak47{AmmoCount:30,CurrentFireMode:2,Tags:["kill","team_fight_tw1"]}
replaceitem entity @a inventory.0 tac:762x39{Tags:["kill","team_fight_tw18"]} 24
replaceitem entity @a inventory.1 tac:762x39{Tags:["kill","team_fight_tw18"]} 22
replaceitem entity @a inventory.2 tac:762x39{Tags:["kill","team_fight_tw18"]} 22
replaceitem entity @a inventory.3 tac:762x39{Tags:["kill","team_fight_tw18"]} 22
replaceitem entity @a hotbar.2 minecraft:iron_sword{Tags:["kill"],Unbreakable:1b,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"noName",Amount:20d,Operation:0,UUID:[I;7264,7271,2427,5194],Slot:mainhand},{AttributeName:"generic.movement_speed",Name:"noName",Amount:0.01d,Operation:0,UUID:[I;7166,2472,6621,6937],Slot:mainhand},{AttributeName:"generic.attack_speed",Name:"noName",Amount:-3d,Operation:0,UUID:[I;1915,2669,9394,5264],Slot:mainhand}]}
replaceitem entity @a hotbar.3 tac:light_grenade{Tags:["kill"]}
execute as @a run function myduty:main/team_armor

title @a reset
title @a title {"text": "军备竞赛","color": "gold","bold": true}
title @a subtitle {"text": "击杀获得新武器","color": "aqua"}
effect give @a minecraft:instant_health 1 5 true
effect give @a minecraft:resistance 20 100 true