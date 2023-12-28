function myduty:main/mode_4/c4/lopp
function myduty:main/mode_4/reset_game/start_time
execute as @a at @s if score @s kill matches 1.. run function myduty:main/mode_4/score/kill
execute as @a[tag=menu_inventory_mode4] run function myduty:main/mode_4/gui/menu_inventory_mode4
function myduty:main/mode_4/score/mvp
bossbar set mode_4_score name {"text":"","extra":[{"text":"[","bold":true},{"text":"特别小组","bold":true,"color":"blue"},{"text":"]","bold":true},{"text":" "},{"score":{"name":"#blue","objective":"score_show"}},{"selector": "@e[tag=blue_score_10,limit=1]"},{"translate":"space.32"},{"selector": "@e[tag=score_10,limit=1]"},{"score":{"name":"#mode_4_score_set","objective":"mode_4_score_set"},"bold": true},{"translate":"space.32"},{"selector": "@e[tag=red_score_10,limit=1]"},{"score":{"name":"#red","objective":"score_show"}},{"text":" "},{"text":"[","bold":true},{"text":"战术核心","bold":true,"color":"red"},{"text":"]","bold":true}]}
bossbar set mode_4_hud players @a
bossbar set mode_4_score players @a
bossbar set gametime players @a
#没c4没blue
execute if score #mode_4 start matches 1 unless entity @e[type=armor_stand,tag=c4_install] unless entity @a[team=blue,gamemode=adventure] run function myduty:main/mode_4/score/_win_red
#没c4没red
execute if score #mode_4 start matches 1 unless entity @e[type=armor_stand,tag=c4_install] unless entity @a[team=red,gamemode=adventure] run function myduty:main/mode_4/score/_win_blue
#有c4没blue
execute if score #mode_4 start matches 1 if entity @e[type=armor_stand,tag=c4_install] unless entity @a[team=blue,gamemode=adventure] run function myduty:main/mode_4/score/_win_red
execute as @a if score @s death matches 1 run function myduty:main/mode_4/death/death
execute as @a if score @s revive_time matches 0.. run scoreboard players remove @s revive_time 1
execute as @a if score @s revive_time matches 0 run tag @s remove revive

execute as @a[team=blue,gamemode=spectator,tag=!revive] at @s if score #mode_4 start matches 1 unless entity @a[team=blue,gamemode=adventure,distance=..0.5] run spectate @p[team=blue,gamemode=adventure]
execute as @a[team=red,gamemode=spectator,tag=!revive] at @s if score #mode_4 start matches 1 unless entity @a[team=red,gamemode=adventure,distance=..0.5] run spectate @p[team=red,gamemode=adventure]
execute as @a[team=blue,gamemode=spectator,tag=!revive] at @s if entity @a[team=blue,gamemode=adventure] run title @s actionbar {"text": "","extra":[{"text": "当前观众: ","bold": true},{"selector": "@p[team=blue,gamemode=adventure]"},{"text": " >"},{"text": "按","bold": true},{"text": "数字键","bold": true,"color": "gold"},{"text": "切换观众","bold": true},{"text": "<"}]}
execute as @a[team=red,gamemode=spectator,tag=!revive] at @s if entity @a[team=red,gamemode=adventure] run title @s actionbar {"text": "","extra":[{"text": "当前观众: ","bold": true},{"selector": "@p[team=red,gamemode=adventure]"},{"text": " >"},{"text": "按","bold": true},{"text": "数字键","bold": true,"color": "gold"},{"text": "切换观众","bold": true},{"text": "<"}]}