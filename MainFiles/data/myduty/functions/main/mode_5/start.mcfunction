scoreboard objectives add kda_k dummy [{"text":"["},{"text":"击杀榜","color":"red","bold":true},{"text":"]"}]
scoreboard objectives add kda_d deathCount
scoreboard players set @a kda_k 0
scoreboard players set @a kda_d 0
scoreboard players set #mvp_blue kda_k 0
scoreboard players set #mvp_red kda_k 0
scoreboard players set #max kda_k 0
scoreboard players set #mvp kda_k 0
scoreboard players reset @a team_fight_ui
scoreboard players set @a team_fight_menu 8888
scoreboard players reset @a team_fight_shop
scoreboard objectives add revive_thing dummy
scoreboard objectives add revive_thing_fwq dummy
scoreboard objectives setdisplay sidebar kda_k
scoreboard objectives add kill playerKillCount
scoreboard objectives add death deathCount
scoreboard objectives add death2 dummy
team modify blue nametagVisibility never
team modify red nametagVisibility never
tag @a add menu_inventory_mode5
team modify blue friendlyFire true
team modify red friendlyFire true
team modify blue seeFriendlyInvisibles false
team modify red seeFriendlyInvisibles false
team modify blue color aqua
team modify red color aqua
team modify blue prefix {"text": "","color": "aqua"}
team modify red prefix {"text": "","color": "aqua"}

scoreboard objectives add score dummy
scoreboard players operation @a score = #mode_5_score_set mode_5_score_set
scoreboard players reset @a random
scoreboard players reset @a random_max

#HUD
bossbar add mode_5_hud [{"translate":"space.-2"},{"text":"\uea01","font": "minecraft:hud"}]
bossbar set mode_5_hud players @a
bossbar add mode_5_score {"text":"","extra":[{"text":"[","bold":true},{"text":"目标分数","bold":true,"color":"red"},{"text":"]","bold":true},{"text":" "},{"score":{"name":"#mode_5_score_set","objective":"mode_5_score_set"}},{"translate":"space.29"},{"text": "===","bold": true},{"translate":"space.29"},{"selector": "@e[tag=max_score_10,limit=1]"},{"score":{"name":"#max","objective":"kda_k"}},{"text":" "},{"text":"[","bold":true},{"text":"当前最高","bold":true,"color":"yellow"},{"text":"]","bold":true}]}
bossbar set mode_5_score players @a
function myduty:main/mode_5/score/show_score
#倒计时
scoreboard objectives add gametime_min dummy
scoreboard objectives add gametime_sec dummy
scoreboard players operation @e[tag=gametime] gametime_min = @e[tag=gametime] gametime_set
scoreboard players set @e[tag=gametime] gametime_sec 0
execute as @e[tag=gametime] run function myduty:main/mode_5/gametime/gametime_10
bossbar add gametime {"text":"","extra":[{"selector": "@e[tag=gametime_min_10,limit=1]","bold":true},{"score":{"name":"@e[tag=gametime,limit=1]","objective":"gametime_min"},"bold":true},{"text":":","bold":true},{"selector": "@e[tag=gametime_sec_10,limit=1]","bold":true},{"score": {"objective":"gametime_sec","name": "@e[tag=gametime,limit=1]"},"bold": true},{"selector": "@e[tag=gametime_sec_0,limit=1]"}]}
bossbar set gametime players @a

title @a reset
title @a title {"text": "死亡竞赛","color": "gold","bold": true}
title @a subtitle {"text": "击杀所有其他玩家","color": "aqua"}
effect give @a minecraft:instant_health 1 5 true
scoreboard objectives add start_timer_md5 dummy

execute if score #map map matches 4 run tp @a 172 4 601
execute if score #map map matches 5 run tp @a 633 4 630
execute if score #map map matches 7 run tp @a 1560 6 628
execute if score #map map matches 8 run tp @a 2192 5 632
execute if score #map map matches 9 run tp @a 2987 4 621