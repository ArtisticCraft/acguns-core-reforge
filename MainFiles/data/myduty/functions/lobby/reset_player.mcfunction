tp @s 184 4 183 0 0
gamemode adventure @s
team join lobby @s
effect clear @s
tag @s remove menu_inventory
tag @s remove menu_inventory_mode2
tag @s remove menu_inventory_mode4
tag @s remove menu_inventory_mode5
tag @s remove ready
tag @s remove kda
tag @s remove mvp_blue
tag @s remove mvp_red
tag @s remove mvp_5
tag @s remove score_19
tag @s remove over_a
tag @s remove over_b
tag @s remove over_c
tag @s remove gameover
tag @s remove domination_ct
tag @s remove domination_t
tag @s remove cd
tag @s remove skill
tag @s remove ready_yes
tag @s remove revive
tag @s remove c4
tag @s remove c4_defuse
tag @s remove c4_install
tag @s remove mvp_blue_4
tag @s remove mvp_red_4
tag @s remove c4_drop_find
tag @s remove death
tag @s remove blue
tag @s remove red
tag @s remove player_game

scoreboard players reset @s revive_thing_sk
scoreboard players reset @s skill_time
scoreboard players reset @s cd_time
scoreboard players reset @s continuous_kill
scoreboard players reset @s kill_time
scoreboard players reset @s revive_time
scoreboard players reset @s uuid
xp set @s 0 levels

clear @s
effect give @s minecraft:instant_health 1 5 true

#ui
execute if score #mode start matches 0 run replaceitem entity @s hotbar.4 lime_wool{Tags:["yes"],display:{Name:'[{"text":"准备","color":"green","italic": false,"bold": true},{"text":"(背包点击)","color":"dark_gray","italic": false,"bold": false}]'}}
replaceitem entity @s inventory.0 bell{Tags:["tips","clear"],display:{Name:'[{"text":"教程","color":"white","italic": false,"bold": true},{"text":"(点击使用)","color":"dark_gray","italic": false,"bold": false}]'}}
replaceitem entity @s inventory.9 oak_sign{Tags:["mode","clear"],display:{Name:'[{"text":"模式介绍","color":"white","italic": false,"bold": true},{"text":"(点击使用)","color":"dark_gray","italic": false,"bold": false}]'}}
function myduty:lobby/inventory_gui/tips
