schedule clear myduty:main/mode_4/gametime/gametime
effect clear @a
clear @a[tag=player_game]
tellraw @a {"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @a [{"text":"[","bold":true,"color":"white"},{"text":"上回合战况","bold":true,"color":"gold"},{"text":"]","bold":true,"color":"white"}]
function myduty:main/mode_4/score/show_kda_k_4
title @a reset
execute if score #mode_4_score_set mode_4_score_set matches 8 if score #round round matches 9 run function myduty:main/mode_4/reset_game/e_team
execute if score #mode_4_score_set mode_4_score_set matches 16 if score #round round matches 17 run function myduty:main/mode_4/reset_game/e_team
execute as @a run gamemode adventure @s
tag @a remove c4
tag @a remove gameover
tag @a remove c4_defuse
tag @a remove c4_install
tag @a remove cd
tag @a remove c4_drop_find
tag @a remove death
kill @e[type=armor_stand,tag=c4]
kill @e[type=armor_stand,tag=c4_text]
kill @e[type=armor_stand,tag=c4_install] 
kill @e[tag=gametime_sec_0]
kill @e[tag=skill_4]
kill @e[tag=skill_5]
scoreboard objectives add start_timer_md4 dummy
scoreboard players set @a kda_k_4 0
scoreboard players set @a team_fight_menu 0
scoreboard players set #mvp_blue kda_k_4 0
scoreboard players set #mvp_red kda_k_4 0
scoreboard players reset @a cd_time
scoreboard players reset @a skill_time
#倒计时
scoreboard objectives add gametime_sec dummy
scoreboard players set @e[tag=gametime] gametime_min 2
scoreboard players set @e[tag=gametime] gametime_sec 30
execute as @e[tag=gametime] at @s run function myduty:main/mode_4/gametime/gametime_10
execute store result score #blue_player surviving_player run effect give @a[team=blue,gamemode=adventure] luck 1 0 true
execute store result score #red_player surviving_player run effect give @a[team=red,gamemode=adventure] luck 1 0 true
function myduty:main/mode_4/gametime/player_icon
bossbar set gametime name {"text":"","extra":[{"selector": "@e[tag=blue_player_6,limit=1]"},{"selector": "@e[tag=blue_player_60,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=blue_player_5,limit=1]"},{"selector": "@e[tag=blue_player_50,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=blue_player_4,limit=1]"},{"selector": "@e[tag=blue_player_40,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=blue_player_3,limit=1]"},{"selector": "@e[tag=blue_player_30,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=blue_player_2,limit=1]"},{"selector": "@e[tag=blue_player_20,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=blue_player_1,limit=1]"},{"selector": "@e[tag=blue_player_10,limit=1]"},{"translate":"space.12"},{"selector": "@e[tag=gametime_min_10,limit=1]","bold":true},{"score":{"name":"@e[tag=gametime,limit=1]","objective":"gametime_min"},"bold":true},{"text":":","bold":true},{"selector": "@e[tag=gametime_sec_10,limit=1]","bold":true},{"score": {"objective":"gametime_sec","name": "@e[tag=gametime,limit=1]"},"bold": true},{"selector": "@e[tag=gametime_sec_0,limit=1]"},{"translate":"space.12"},{"selector": "@e[tag=red_player_10,limit=1]"},{"selector": "@e[tag=red_player_1,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=red_player_20,limit=1]"},{"selector": "@e[tag=red_player_2,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=red_player_30,limit=1]"},{"selector": "@e[tag=red_player_3,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=red_player_40,limit=1]"},{"selector": "@e[tag=red_player_4,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=red_player_50,limit=1]"},{"selector": "@e[tag=red_player_5,limit=1]"},{"translate":"space.6"},{"selector": "@e[tag=red_player_60,limit=1]"},{"selector": "@e[tag=red_player_6,limit=1]"}]}
#
bossbar set mode_4_pt players @a
tag @r[team=red] add c4
replaceitem entity @a[team=red,tag=c4] hotbar.5 warped_fungus_on_a_stick{Tags:["c4"],CustomModelData:1,display:{Name:'{"text":"C4炸弹","color":"red","italic": false,"bold": true}',Lore:['{"text":"可以安装在特定的位置","color":"gray","italic": false}','{"text":"低头安装炸弹","color":"gray","italic": false}','{"text":"右键丢出","color":"gray","italic": false}']}}
replaceitem entity @a[team=blue] hotbar.5 shears{Tags:["shears"],CustomModelData:1,display:{Name:'{"text":"剪线钳","color":"aqua","italic": false,"bold": true}',Lore:['{"text":"低头拆除炸弹","color":"gray","italic": false}']}}
replaceitem entity @a[tag=player_game] hotbar.2 minecraft:iron_sword{Tags:["kill"],Unbreakable:1b,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"noName",Amount:20d,Operation:0,UUID:[I;7264,7271,2427,5194],Slot:mainhand},{AttributeName:"generic.movement_speed",Name:"noName",Amount:0.01d,Operation:0,UUID:[I;7166,2472,6621,6937],Slot:mainhand},{AttributeName:"generic.attack_speed",Name:"noName",Amount:-3d,Operation:0,UUID:[I;1915,2669,9394,5264],Slot:mainhand}]}
replaceitem entity @a[tag=player_game] hotbar.3 tac:light_grenade{Tags:["kill"]}
execute as @a[tag=player_game] run function myduty:main/gui/revive_thing
execute as @a run function myduty:main/team_armor
effect give @a minecraft:instant_health 1 5 true
effect give @a minecraft:resistance 20 100 true
effect give @e[type=armor_stand,tag=armament] glowing 20 1 true

execute if score #mode_4_score_set mode_4_score_set matches 8 unless score #round round matches 9 run title @a title {"text":"","extra":[{"text":"ROUND ","color": "aqua","bold":true},{"score":{"name":"#round","objective":"round"},"bold": true},{"text":"! ","color": "aqua","bold":true}]}
execute if score #mode_4_score_set mode_4_score_set matches 16 unless score #round round matches 17 run title @a title {"text":"","extra":[{"text":"ROUND ","color": "aqua","bold":true},{"score":{"name":"#round","objective":"round"},"bold": true},{"text":"! ","color": "aqua","bold":true}]}
execute if score #mode_4_score_set mode_4_score_set matches 8 if score #blue score_show matches 7 if score #red score_show matches ..6 unless score #round round matches 9 run title @a title {"text":"","extra":[{"text":"赛点!","color": "aqua","bold":true}]}
execute if score #mode_4_score_set mode_4_score_set matches 8 if score #red score_show matches 7 if score #blue score_show matches ..6 unless score #round round matches 9 run title @a title {"text":"","extra":[{"text":"赛点!","color": "aqua","bold":true}]}
execute if score #mode_4_score_set mode_4_score_set matches 16 if score #blue score_show matches 15 if score #red score_show matches ..14 unless score #round round matches 9 run title @a title {"text":"","extra":[{"text":"赛点!","color": "aqua","bold":true}]}
execute if score #mode_4_score_set mode_4_score_set matches 16 if score #red score_show matches 15 if score #blue score_show matches ..14 unless score #round round matches 9 run title @a title {"text":"","extra":[{"text":"赛点!","color": "aqua","bold":true}]}
execute if score #mode_4_score_set mode_4_score_set matches 8 if score #round round matches 15 run title @a title {"text":"","extra":[{"text":"决胜局!","color": "aqua","bold":true}]}
execute if score #mode_4_score_set mode_4_score_set matches 16 if score #round round matches 31 run title @a title {"text":"","extra":[{"text":"决胜局!","color": "aqua","bold":true}]}
title @a[team=blue] subtitle {"text": "保护目标不受摧毁","color": "yellow"}
title @a[team=red] subtitle {"text": "找到并摧毁目标","color": "yellow"}
tellraw @a {"text": " "}
tellraw @a [{"text":"[","bold":true},{"text":"提示","bold":true,"color":"yellow"},{"text":"]: ","bold":true,"color":"white"},{"text":"安装/拆除C4炸弹均在包点附近低头操作即可。","color": "green","bold":false}]
scoreboard players set #mode_4 start 1