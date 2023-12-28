function myduty:lobby/start_game/timer/start_gametimer
function myduty:lobby/start_game/timer/start_timer

execute as @a if score @s leave_game matches 1.. run function myduty:lobby/leave_game
execute as @a[team=] at @s run function myduty:lobby/reset_player
execute as @a[x=193,y=7,z=193,dx=0,dy=-4,dz=3,tag=ready_yes] run function myduty:lobby/team/join_blue
execute as @a[x=175,y=7,z=196,dx=0,dy=-4,dz=-3,tag=ready_yes] run function myduty:lobby/team/join_red
execute as @a[x=191,y=102,z=-361,dx=0,dy=2,dz=2] run function myduty:lobby/map_test/tp_back
execute as @a[team=!map_test] at @s run function myduty:lobby/inventory_gui/main

execute if score #mode start matches 0 store result score #ready_player ready_player run effect give @a[tag=ready] saturation 2 0 true
execute as @a if score #mode start matches 0 run title @s[team=!map_test] actionbar {"text": "","extra":[{"text": "模式:","color": "gold","bold": true},{"selector": "@e[tag=mode_lobby,limit=1]"},{"text": " "},{"text": "地图:","color": "aqua","bold": true},{"selector": "@e[tag=map_lobby,limit=1]"},{"text": " "},{"text": "队伍:","bold": true},{"selector": "@s"},{"text": " "}]}
execute if score #mode start matches 1 run tp @a[x=193,y=4,z=188,dx=-19,dy=6,dz=20,team=lobby] 184.49 4.00 183.58 0 0
