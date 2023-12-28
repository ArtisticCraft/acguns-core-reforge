scoreboard players reset @a lobby_ui
clear @a
tag @a remove ready_yes
tag @a remove ready
gamemode adventure @a
data merge entity @e[tag=start_game,limit=1] {CustomNameVisible:1b}
tellraw @a {"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute if score #mode mode matches 1 run function myduty:main/mode_1/start
execute if score #mode mode matches 2 run function myduty:main/mode_2/start
execute if score #mode mode matches 3 run function myduty:main/mode_3/start
execute if score #mode mode matches 4 run function myduty:main/mode_4/start
execute if score #mode mode matches 5 run function myduty:main/mode_5/start

setblock 184 6 182 minecraft:oak_wall_sign[facing=south,waterlogged=false]{Color:"black",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"bold":true,"italic":false,"color":"aqua","clickEvent":{"action":"run_command","value":"function myduty:main/joining_midgame/main"},"text":"[中途加入]"}',Text1:'{"text":""}'}