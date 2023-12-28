playsound ui.button.click master @s ~ ~ ~ 1 1
execute if entity @s[tag=!midgame] if score #blue_player ready_player = #red_player ready_player run function myduty:main/joining_midgame/join_random
execute if entity @s[tag=!midgame] if score #blue_player ready_player > #red_player ready_player run function myduty:main/joining_midgame/join_red
execute if entity @s[tag=!midgame] if score #blue_player ready_player < #red_player ready_player run function myduty:main/joining_midgame/join_blue
scoreboard players reset @s lobby_ui
clear @s
tag @s add player_game
tag @s remove midgame
tellraw @s {"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute if score #mode mode matches 1 run function myduty:main/joining_midgame/mode/mode_1
execute if score #mode mode matches 2 run function myduty:main/joining_midgame/mode/mode_2
execute if score #mode mode matches 3 run function myduty:main/joining_midgame/mode/mode_3
execute if score #mode mode matches 4 run function myduty:main/joining_midgame/mode/mode_4
execute if score #mode mode matches 5 run function myduty:main/joining_midgame/mode/mode_5
tellraw @s[team=red] [{"text":"[","bold":true},{"text":"提示","bold":true,"color":"dark_green"},{"text":"]:","bold":true},{"text":" 已中途加入战局,你的队伍是","bold": false},{"text":" 战术核心","bold":true,"color":"red"}]
tellraw @s[team=blue] [{"text":"[","bold":true},{"text":"提示","bold":true,"color":"dark_green"},{"text":"]:","bold":true},{"text":" 已中途加入战局,你的队伍是","bold": false},{"text":" 特别小组","bold":true,"color":"blue"}]