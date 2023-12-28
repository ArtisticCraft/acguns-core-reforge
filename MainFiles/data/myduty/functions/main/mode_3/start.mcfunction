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
scoreboard objectives add ct_score_timer_a dummy
scoreboard objectives add t_score_timer_a dummy
scoreboard objectives add ct_score_timer_b dummy
scoreboard objectives add t_score_timer_b dummy
scoreboard objectives add ct_score_timer_c dummy
scoreboard objectives add t_score_timer_c dummy
scoreboard objectives add ct_score_limit_a dummy
scoreboard objectives add t_score_limit_a dummy
scoreboard objectives add ct_score_limit_b dummy
scoreboard objectives add t_score_limit_b dummy
scoreboard objectives add ct_score_limit_c dummy
scoreboard objectives add t_score_limit_c dummy
scoreboard objectives add ct_flag_score dummy
scoreboard objectives add t_flag_score dummy
scoreboard players set #flag_score ct_flag_score 0
scoreboard players set #flag_score t_flag_score 0
scoreboard objectives add ct_score_show dummy
scoreboard objectives add t_score_show dummy
scoreboard players set #ct_score ct_score_show 0
scoreboard players set #t_score t_score_show 0
scoreboard objectives add flag_score_timer dummy
scoreboard players set #flag_score_timer flag_score_timer 100
scoreboard objectives add ct_score dummy
scoreboard objectives add t_score dummy
scoreboard players operation #ct_score ct_score = #mode_3_score_set mode_3_score_set
scoreboard players operation #t_score t_score = #mode_3_score_set mode_3_score_set
team modify blue nametagVisibility hideForOtherTeams
team modify red nametagVisibility hideForOtherTeams
tag @a[team=blue] add domination_ct
tag @a[team=red] add domination_t
tag @a add menu_inventory

#HUD
bossbar add minecraft:domination_hud [{"translate":"space.-2"},{"text":"\uea01","font": "minecraft:hud"}]
bossbar set minecraft:domination_hud players @a
#
bossbar add minecraft:domination {"text":"","extra":[{"text":"[","bold":true},{"text":"特别小组","bold":true,"color":"blue"},{"text":"]","bold":true},{"text":" "},{"score":{"name":"#ct_score","objective":"ct_score_show"}},{"selector": "@e[tag=ct_score_10,limit=1]"},{"selector": "@e[tag=ct_score_100,limit=1]"},{"translate":"space.23"},{"selector": "@e[tag=score_100,limit=1]"},{"score":{"name":"#mode_3_score_set","objective":"mode_3_score_set"},"color":"white","bold": true},{"translate":"space.23"},{"selector": "@e[tag=t_score_100,limit=1]"},{"selector": "@e[tag=t_score_10,limit=1]"},{"score":{"name":"#t_score","objective":"t_score_show"}},{"text":" "},{"text":"[","bold":true},{"text":"战术核心","bold":true,"color":"red"},{"text":"]","bold":true}]}
bossbar set minecraft:domination players @a
function myduty:main/mode_3/score/show_score
execute if score #mode_3_score_set mode_3_score_set matches ..99 unless entity @e[tag=score_100] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["score_100"],CustomName:'{"text":"0","bold": true}'}
execute if score #mode_3_score_set mode_3_score_set matches 100.. if entity @e[tag=score_100] run kill @e[tag=score_100]
#
bossbar add minecraft:domination_flag {"text":"","extra":[{"selector": "@e[tag=AA,limit=1]"},{"text": " "},{"selector": "@e[tag=BB,limit=1]"},{"text": " "},{"selector": "@e[tag=CC,limit=1]"}]}
bossbar set minecraft:domination_flag players @a
summon area_effect_cloud 181 4 181 {Duration:300000000,Tags:["AA"],CustomName:'{"text":"A","bold": true}'}
summon area_effect_cloud 181 4 181 {Duration:300000000,Tags:["BB"],CustomName:'{"text":"B","bold": true}'}
summon area_effect_cloud 181 4 181 {Duration:300000000,Tags:["CC"],CustomName:'{"text":"C","bold": true}'}

replaceitem entity @a hotbar.2 minecraft:iron_sword{Tags:["kill"],Unbreakable:1b,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"noName",Amount:20d,Operation:0,UUID:[I;7264,7271,2427,5194],Slot:mainhand},{AttributeName:"generic.movement_speed",Name:"noName",Amount:0.01d,Operation:0,UUID:[I;7166,2472,6621,6937],Slot:mainhand},{AttributeName:"generic.attack_speed",Name:"noName",Amount:-3d,Operation:0,UUID:[I;1915,2669,9394,5264],Slot:mainhand}]}
replaceitem entity @a hotbar.1 tac:m1911{AmmoCount:7,Tags:["kill","team_fight_tw2"]}
replaceitem entity @a inventory.9 tac:round45{Tags:["kill","team_fight_tw9_12"]} 24
replaceitem entity @a hotbar.3 tac:light_grenade{Tags:["kill"]}
execute as @a run function myduty:main/team_armor
replaceitem entity @a hotbar.8 carrot_on_a_stick{Tags:["skill"],CustomModelData:2,display:{Name:'[{"text":"弹药补充","color":"red","italic": false,"bold": true},{"text":"(右键使用)","color":"dark_gray","italic": false,"bold": false}]',Lore:['[{"text":"-=[","color":"yellow","italic": false},{"text":"技能","color":"aqua","italic": false},{"text":"]=-","color":"yellow","italic": false}]','{"text":"使用后补充身上所有武器的弹药","color":"dark_gray","italic": false,"bold": true}']}}
scoreboard players set @a revive_thing_sk 51

title @a reset
title @a title {"text": "征服","color": "yellow","bold": true}
title @a subtitle {"text": "夺取并守住旗帜","color": "aqua"}
effect give @a minecraft:instant_health 1 5 true
effect give @a minecraft:resistance 20 100 true
function myduty:main/mode_3/map_flag/main
effect give @e[type=armor_stand,tag=flag] glowing 20 1 true