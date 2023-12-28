function myduty:main/gui/one_items/main
execute as @a at @s if score @s kill matches 1.. run function myduty:main/kill/main
execute as @a[team=blue] at @s if score @s kill matches 1.. run function myduty:main/mode_1/score/score_blue
execute as @a[team=red] at @s if score @s kill matches 1.. run function myduty:main/mode_1/score/score_red
execute as @a if score @s death matches 1 run function myduty:main/mode_1/death/death
execute as @a if score @s death2 matches ..100 run scoreboard players remove @s death2 1
execute as @a if score @s death2 matches ..0 run function myduty:main/mode_1/death/revive

execute as @a if score @s revive_time matches 0.. run scoreboard players remove @s revive_time 1
execute as @a if score @s revive_time matches 0 run tag @s remove revive
execute as @a at @s if score @s revive_time matches 0.. run particle minecraft:instant_effect ~ ~ ~ 0.3 1 0.3 0 3 force @a

bossbar set mode_1_score name {"text":"","extra":[{"text":"[","bold":true},{"text":"特别小组","bold":true,"color":"blue"},{"text":"]","bold":true},{"text":" "},{"score":{"name":"#blue","objective":"score_show"}},{"selector": "@e[tag=blue_score_10,limit=1]"},{"selector": "@e[tag=blue_score_100,limit=1]"},{"translate":"space.23"},{"selector": "@e[tag=score_100,limit=1]"},{"score":{"name":"#mode_1_score_set","objective":"mode_1_score_set"},"bold": true},{"translate":"space.23"},{"selector": "@e[tag=red_score_100,limit=1]"},{"selector": "@e[tag=red_score_10,limit=1]"},{"score":{"name":"#red","objective":"score_show"}},{"text":" "},{"text":"[","bold":true},{"text":"战术核心","bold":true,"color":"red"},{"text":"]","bold":true}]}
bossbar set mode_1_hud players @a
bossbar set mode_1_score players @a
bossbar set gametime players @a