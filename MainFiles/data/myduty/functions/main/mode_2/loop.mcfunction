execute as @a at @s if score @s kill matches 1.. run function myduty:main/mode_2/score/main
execute as @a if score @s death matches 1 run function myduty:main/mode_2/death/death
execute as @a if score @s death2 matches ..100 run scoreboard players remove @s death2 1
execute as @a if score @s death2 matches ..0 run function myduty:main/mode_2/death/revive

execute as @a if score @s revive_time matches 0.. run scoreboard players remove @s revive_time 1
execute as @a if score @s revive_time matches 0 run tag @s remove revive
execute as @a at @s if score @s revive_time matches 0.. run particle minecraft:instant_effect ~ ~ ~ 0.3 1 0.3 0 3 force @a

execute as @a[tag=menu_inventory_mode2] run function myduty:main/mode_2/gui/menu_inventory_mode2
execute as @a[scores={kda_k=19..}] run function myduty:main/mode_2/gui/menu_inventory_mode2_19

bossbar set mode_2_score name {"text":"","extra":[{"text":"[","bold":true},{"text":"特别小组","bold":true,"color":"blue"},{"text":"]","bold":true},{"text":" "},{"score":{"name":"#max_blue","objective":"kda_k"}},{"selector": "@e[tag=blue_score_10,limit=1]"},{"translate":"space.29"},{"text": "020","bold": true},{"translate":"space.29"},{"selector": "@e[tag=red_score_10,limit=1]"},{"score":{"name":"#max_red","objective":"kda_k"}},{"text":" "},{"text":"[","bold":true},{"text":"战术核心","bold":true,"color":"red"},{"text":"]","bold":true}]}
bossbar set mode_2_hud players @a
bossbar set mode_2_score players @a
bossbar set gametime players @a