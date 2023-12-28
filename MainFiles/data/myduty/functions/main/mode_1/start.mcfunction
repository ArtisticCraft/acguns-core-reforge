scoreboard objectives add start_timer dummy
scoreboard objectives add kda_k dummy
scoreboard objectives add kda_d deathCount
scoreboard players set @a kda_k 0
scoreboard players set @a kda_d 0
scoreboard players set #mvp_blue kda_k 0
scoreboard players set #mvp_red kda_k 0
scoreboard objectives setdisplay list kda_k
scoreboard players set @a team_fight_ui 0
scoreboard players set @a team_fight_menu 0
scoreboard players set @a team_fight_shop 0
scoreboard objectives add revive_thing dummy
scoreboard objectives add revive_thing_fwq dummy
scoreboard players set @a revive_thing_fwq 20
scoreboard objectives add kill playerKillCount
scoreboard objectives add death deathCount
scoreboard objectives add death2 dummy
scoreboard objectives add score dummy
scoreboard objectives add score_show dummy
scoreboard players operation #blue score = #mode_1_score_set mode_1_score_set
scoreboard players operation #red score = #mode_1_score_set mode_1_score_set
scoreboard players set #blue score_show 0
scoreboard players set #red score_show 0
team modify blue nametagVisibility hideForOtherTeams
team modify red nametagVisibility hideForOtherTeams
tag @a add menu_inventory

#HUD
bossbar add mode_1_hud [{"translate":"space.-2"},{"text":"\uea01","font": "minecraft:hud"}]
bossbar set mode_1_hud players @a
bossbar add mode_1_score {"text":"","extra":[{"text":"[","bold":true},{"text":"特别小组","bold":true,"color":"blue"},{"text":"]","bold":true},{"text":" "},{"score":{"name":"#blue","objective":"score_show"}},{"selector": "@e[tag=blue_score_10,limit=1]"},{"selector": "@e[tag=blue_score_100,limit=1]"},{"translate":"space.23"},{"selector": "@e[tag=score_100,limit=1]"},{"score":{"name":"#mode_1_score_set","objective":"mode_1_score_set"},"bold": true},{"translate":"space.23"},{"selector": "@e[tag=red_score_100,limit=1]"},{"selector": "@e[tag=red_score_10,limit=1]"},{"score":{"name":"#red","objective":"score_show"}},{"text":" "},{"text":"[","bold":true},{"text":"战术核心","bold":true,"color":"red"},{"text":"]","bold":true}]}
bossbar set mode_1_score players @a
function myduty:main/mode_1/score/show_score
execute if score #mode_1_score_set mode_1_score_set matches ..99 unless entity @e[tag=score_100] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["score_100"],CustomName:'{"text":"0","bold": true}'}
execute if score #mode_1_score_set mode_1_score_set matches 100.. if entity @e[tag=score_100] run kill @e[tag=score_100]
#倒计时
scoreboard objectives add gametime_min dummy
scoreboard objectives add gametime_sec dummy
scoreboard players operation @e[tag=gametime] gametime_min = @e[tag=gametime] gametime_set
scoreboard players set @e[tag=gametime] gametime_sec 0
execute as @e[tag=gametime] run function myduty:main/mode_1/gametime/gametime_10
bossbar add gametime {"text":"","extra":[{"selector": "@e[tag=gametime_min_10,limit=1]","bold":true},{"score":{"name":"@e[tag=gametime,limit=1]","objective":"gametime_min"},"bold":true},{"text":":","bold":true},{"selector": "@e[tag=gametime_sec_10,limit=1]","bold":true},{"score": {"objective":"gametime_sec","name": "@e[tag=gametime,limit=1]"},"bold": true},{"selector": "@e[tag=gametime_sec_0,limit=1]"}]}
bossbar set gametime players @a

replaceitem entity @a hotbar.2 minecraft:iron_sword{Tags:["kill"],Unbreakable:1b,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"noName",Amount:20d,Operation:0,UUID:[I;7264,7271,2427,5194],Slot:mainhand},{AttributeName:"generic.movement_speed",Name:"noName",Amount:0.01d,Operation:0,UUID:[I;7166,2472,6621,6937],Slot:mainhand},{AttributeName:"generic.attack_speed",Name:"noName",Amount:-3d,Operation:0,UUID:[I;1915,2669,9394,5264],Slot:mainhand}]}
replaceitem entity @a hotbar.1 tac:m1911{AmmoCount:7,Tags:["kill","team_fight_tw2"]}
replaceitem entity @a inventory.9 tac:round45{Tags:["kill","team_fight_tw9_12"]} 24
replaceitem entity @a hotbar.3 tac:light_grenade{Tags:["kill"]}
execute as @a run function myduty:main/team_armor
replaceitem entity @a hotbar.8 carrot_on_a_stick{Tags:["skill"],CustomModelData:2,display:{Name:'[{"text":"弹药补充","color":"red","italic": false,"bold": true},{"text":"(右键使用)","color":"dark_gray","italic": false,"bold": false}]',Lore:['[{"text":"-=[","color":"yellow","italic": false},{"text":"技能","color":"aqua","italic": false},{"text":"]=-","color":"yellow","italic": false}]','{"text":"使用后补充身上所有武器的弹药","color":"dark_gray","italic": false,"bold": true}']}}
scoreboard players set @a revive_thing_sk 51

title @a reset
title @a title {"text": "团队竞技","color": "yellow","bold": true}
title @a subtitle {"text": "消灭敌方玩家获得分数","color": "aqua"}
effect give @a minecraft:instant_health 1 5 true
effect give @a minecraft:resistance 20 100 true