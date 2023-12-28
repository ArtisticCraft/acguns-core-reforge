function myduty:main/mode_5/start/start_time
execute as @a at @s if score @s kill matches 1.. run function myduty:main/mode_5/score/main
execute as @a if score @s death matches 1 run function myduty:main/mode_5/death/death
execute as @a if score @s death2 matches ..100 run scoreboard players remove @s death2 1
execute as @a if score @s death2 matches ..0 run function myduty:main/mode_5/death/revive

execute as @a[tag=menu_inventory_mode5] run function myduty:main/mode_5/gui/menu_inventory_mode5
execute as @a if score @s revive_time matches 0.. run scoreboard players remove @s revive_time 1
execute as @a if score @s revive_time matches 0 run tag @s remove revive
execute as @a at @s if score @s revive_time matches 0.. run particle minecraft:instant_effect ~ ~ ~ 0.3 1 0.3 0 3 force @a

bossbar set mode_5_score name {"text":"","extra":[{"text":"[","bold":true},{"text":"目标分数","bold":true,"color":"red"},{"text":"]","bold":true},{"text":" "},{"score":{"name":"#mode_5_score_set","objective":"mode_5_score_set"}},{"translate":"space.29"},{"text": "===","bold": true},{"translate":"space.29"},{"selector": "@e[tag=max_score_10,limit=1]"},{"score":{"name":"#max","objective":"kda_k"}},{"text":" "},{"text":"[","bold":true},{"text":"当前最高","bold":true,"color":"yellow"},{"text":"]","bold":true}]}

bossbar set mode_5_hud players @a
bossbar set mode_5_score players @a
bossbar set gametime players @a

execute as @a if score @s kda_k = #mvp kda_k run tag @s add mvp_5
execute as @a if score @s kda_k < #mvp kda_k run tag @s remove mvp_5
execute as @a if score @s kda_k > #mvp kda_k run scoreboard players operation #mvp kda_k = @s kda_k

effect give @a[tag=gameover] minecraft:resistance 16 255 true