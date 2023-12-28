function myduty:main/mode_3/score/main
function myduty:main/gui/one_items/main
execute as @a at @s if score @s kill matches 1.. run function myduty:main/mode_3/score/kill
execute as @a if score @s death matches 1 run function myduty:main/mode_3/death/death
execute as @a if score @s death2 matches ..100 run scoreboard players remove @s death2 1
execute as @a if score @s death2 matches ..0 run function myduty:main/mode_3/death/revive

execute as @a if score @s revive_time matches 0.. run scoreboard players remove @s revive_time 1
execute as @a if score @s revive_time matches 0 run tag @s remove revive
execute as @a at @s if score @s revive_time matches 0.. run particle minecraft:instant_effect ~ ~ ~ 0.3 1 0.3 0 3 force @a

bossbar set minecraft:domination name {"text":"","extra":[{"text":"[","bold":true},{"text":"特别小组","bold":true,"color":"blue"},{"text":"]","bold":true},{"text":" "},{"score":{"name":"#ct_score","objective":"ct_score_show"}},{"selector": "@e[tag=ct_score_10,limit=1]"},{"selector": "@e[tag=ct_score_100,limit=1]"},{"translate":"space.23"},{"selector": "@e[tag=score_100,limit=1]"},{"score":{"name":"#mode_3_score_set","objective":"mode_3_score_set"},"color":"white","bold": true},{"translate":"space.23"},{"selector": "@e[tag=t_score_100,limit=1]"},{"selector": "@e[tag=t_score_10,limit=1]"},{"score":{"name":"#t_score","objective":"t_score_show"}},{"text":" "},{"text":"[","bold":true},{"text":"战术核心","bold":true,"color":"red"},{"text":"]","bold":true}]}
bossbar set minecraft:domination_flag name {"text":"","extra":[{"selector": "@e[tag=AA,limit=1]"},{"text": " "},{"selector": "@e[tag=BB,limit=1]"},{"text": " "},{"selector": "@e[tag=CC,limit=1]"}]}
bossbar set minecraft:domination_hud players @a
bossbar set minecraft:domination players @a
bossbar set minecraft:domination_flag players @a
execute if score #mode start matches 1 if score #blue_player ready_player matches 1.. if score #red_player ready_player matches 0 run function myduty:load
execute if score #mode start matches 1 if score #blue_player ready_player matches 0 if score #red_player ready_player matches 1.. run function myduty:load