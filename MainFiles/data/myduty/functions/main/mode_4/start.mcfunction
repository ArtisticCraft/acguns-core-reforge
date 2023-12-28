scoreboard objectives add start_timer_md4 dummy
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
scoreboard objectives add score dummy
scoreboard objectives add score_show dummy
scoreboard players operation #blue score = #mode_4_score_set mode_4_score_set
scoreboard players operation #red score = #mode_4_score_set mode_4_score_set
scoreboard players set #blue score_show 0
scoreboard players set #red score_show 0
scoreboard objectives add reght_click_c4 minecraft.used:warped_fungus_on_a_stick
scoreboard objectives add sprint_one_cm custom:sprint_one_cm
scoreboard objectives add c4_interact dummy
scoreboard objectives add boom_time dummy
scoreboard objectives add kda_k_4 dummy
scoreboard players set @a kda_k_4 0
scoreboard players set #mvp_blue kda_k_4 0
scoreboard players set #mvp_red kda_k_4 0
scoreboard objectives add round dummy
scoreboard players set #round round 1
team add aqua
team modify aqua color aqua
team add green
team modify green color green
team modify blue nametagVisibility hideForOtherTeams
team modify red nametagVisibility hideForOtherTeams
tag @a[team=blue] add blue
tag @a[team=red] add red
tag @r[team=red] add c4
tag @a add menu_inventory_mode4
scoreboard players set #mode_4 start 1

#HUD
bossbar add mode_4_hud [{"translate":"space.-2"},{"text":"\uea01","font": "minecraft:hud"}]
bossbar set mode_4_hud players @a
bossbar add mode_4_score {"text":"","extra":[{"text":"[","bold":true},{"text":"特别小组","bold":true,"color":"blue"},{"text":"]","bold":true},{"text":" "},{"score":{"name":"#blue","objective":"score_show"}},{"selector": "@e[tag=blue_score_10,limit=1]"},{"translate":"space.32"},{"selector": "@e[tag=score_10,limit=1]"},{"score":{"name":"#mode_4_score_set","objective":"mode_4_score_set"},"bold": true},{"translate":"space.32"},{"selector": "@e[tag=red_score_10,limit=1]"},{"score":{"name":"#red","objective":"score_show"}},{"text":" "},{"text":"[","bold":true},{"text":"战术核心","bold":true,"color":"red"},{"text":"]","bold":true}]}
bossbar set mode_4_score players @a
function myduty:main/mode_4/score/show_score
execute if score #mode_4_score_set mode_4_score_set matches 8 unless entity @e[tag=score_10] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["score_10"],CustomName:'{"text":"0","bold": true}'}
execute if score #mode_4_score_set mode_4_score_set matches 16 if entity @e[tag=score_10] run kill @e[tag=score_10]
#倒计时
scoreboard objectives add gametime_min dummy
scoreboard objectives add gametime_sec dummy
scoreboard players set @e[tag=gametime] gametime_min 2
scoreboard players set @e[tag=gametime] gametime_sec 30
execute as @e[tag=gametime] run function myduty:main/mode_4/gametime/gametime_10
execute store result score #blue_player surviving_player run effect give @a[team=blue,gamemode=adventure] luck 1 0 true
execute store result score #red_player surviving_player run effect give @a[team=red,gamemode=adventure] luck 1 0 true
function myduty:main/mode_4/gametime/player_icon
bossbar add gametime {"text":"","extra":[{"selector": "@e[tag=blue_player_6,limit=1]"},{"selector": "@e[tag=blue_player_60,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=blue_player_5,limit=1]"},{"selector": "@e[tag=blue_player_50,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=blue_player_4,limit=1]"},{"selector": "@e[tag=blue_player_40,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=blue_player_3,limit=1]"},{"selector": "@e[tag=blue_player_30,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=blue_player_2,limit=1]"},{"selector": "@e[tag=blue_player_20,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=blue_player_1,limit=1]"},{"selector": "@e[tag=blue_player_10,limit=1]"},{"translate":"space.12"},{"selector": "@e[tag=gametime_min_10,limit=1]","bold":true},{"score":{"name":"@e[tag=gametime,limit=1]","objective":"gametime_min"},"bold":true},{"text":":","bold":true},{"selector": "@e[tag=gametime_sec_10,limit=1]","bold":true},{"score": {"objective":"gametime_sec","name": "@e[tag=gametime,limit=1]"},"bold": true},{"selector": "@e[tag=gametime_sec_0,limit=1]"},{"translate":"space.12"},{"selector": "@e[tag=red_player_10,limit=1]"},{"selector": "@e[tag=red_player_1,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=red_player_20,limit=1]"},{"selector": "@e[tag=red_player_2,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=red_player_30,limit=1]"},{"selector": "@e[tag=red_player_3,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=red_player_40,limit=1]"},{"selector": "@e[tag=red_player_4,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=red_player_50,limit=1]"},{"selector": "@e[tag=red_player_5,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=red_player_60,limit=1]"},{"selector": "@e[tag=red_player_6,limit=1]"}]}
bossbar set gametime players @a
#包点
bossbar add mode_4_pt [{"text":"蓝色","bold":true,"color":"aqua"},{"text":"A包点","color": "white","bold":true},{"text":" - ","color": "gray","bold":true},{"text":"绿色","bold":true,"color":"green"},{"text":"B包点","color": "white","bold":true}]
bossbar set mode_4_pt players @a

replaceitem entity @a hotbar.2 minecraft:iron_sword{Tags:["kill"],Unbreakable:1b,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"noName",Amount:20d,Operation:0,UUID:[I;7264,7271,2427,5194],Slot:mainhand},{AttributeName:"generic.movement_speed",Name:"noName",Amount:0.01d,Operation:0,UUID:[I;7166,2472,6621,6937],Slot:mainhand},{AttributeName:"generic.attack_speed",Name:"noName",Amount:-3d,Operation:0,UUID:[I;1915,2669,9394,5264],Slot:mainhand}]}
replaceitem entity @a hotbar.1 tac:m1911{AmmoCount:7,Tags:["kill","team_fight_tw2"]}
replaceitem entity @a inventory.9 tac:round45{Tags:["kill","team_fight_tw9_12"]} 24
replaceitem entity @a hotbar.3 tac:light_grenade{Tags:["kill"]}
execute as @a run function myduty:main/team_armor
replaceitem entity @a[team=red,tag=c4] hotbar.5 warped_fungus_on_a_stick{Tags:["c4"],CustomModelData:1,display:{Name:'{"text":"C4炸弹","color":"red","italic": false,"bold": true}',Lore:['{"text":"可以安装在特定的位置","color":"gray","italic": false}','{"text":"低头安装炸弹","color":"gray","italic": false}','{"text":"右键丢出","color":"gray","italic": false}']}}
replaceitem entity @a[team=blue] hotbar.5 shears{Tags:["shears"],CustomModelData:1,display:{Name:'{"text":"剪线钳","color":"aqua","italic": false,"bold": true}',Lore:['{"text":"低头拆除炸弹","color":"gray","italic": false}']}}
replaceitem entity @a hotbar.8 carrot_on_a_stick{Tags:["skill"],CustomModelData:2,display:{Name:'[{"text":"弹药补充","color":"red","italic": false,"bold": true},{"text":"(右键使用)","color":"dark_gray","italic": false,"bold": false}]',Lore:['[{"text":"-=[","color":"yellow","italic": false},{"text":"技能","color":"aqua","italic": false},{"text":"]=-","color":"yellow","italic": false}]','{"text":"使用后补充身上所有武器的弹药","color":"dark_gray","italic": false,"bold": true}']}}
scoreboard players set @a revive_thing_sk 51

title @a reset
title @a title {"text": "搜索与摧毁","color": "yellow","bold": true}
title @a[team=blue] subtitle {"text": "保护目标不受摧毁","color": "aqua"}
title @a[team=red] subtitle {"text": "找到并摧毁目标","color": "aqua"}
tellraw @a [{"text":"[","bold":true},{"text":"提示","bold":true,"color":"yellow"},{"text":"]: ","bold":true,"color":"white"},{"text":"安装/拆除C4炸弹均在包点附近低头操作即可。","color": "green","bold":false}]
effect give @a minecraft:instant_health 1 5 true
effect give @a minecraft:resistance 20 100 true
function myduty:main/mode_4/map_flag/main
effect give @e[type=armor_stand,tag=armament] glowing 20 1 true