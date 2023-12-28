scoreboard players remove #blue score 1
scoreboard players add #blue score_show 1
scoreboard players add #round round 1
effect give @a minecraft:instant_health 1 5 true
tag @a add gameover
xp add @a[team=blue] 50 levels
execute as @a at @s run playsound levelup master @s ~ ~ ~ 1 0
title @a times 10 120 10
title @a subtitle {"text": "","extra":[{"text": "MVP: "},{"selector": "@a[tag=mvp_blue_4,limit=1]"}]}
title @a[team=blue] title [{"text":"YOU WIN!","color":"green","bold": true}]
title @a[team=red] title [{"text":"YOU LOSE!","color":"red","bold": true}]
function myduty:main/mode_4/score/show_score
scoreboard players set #mode_4 start 0

execute if score #blue score matches 1.. run schedule function myduty:main/mode_4/reset_game/reset 12s append
execute if score #blue score matches 1.. run tellraw @a [{"text":"[","bold":true},{"text":"注意","bold":true,"color":"gold"},{"text":"]: ","bold":true},{"text":"恭喜","bold":true,"color":"green"},{"text":"特别小组","bold":true,"color":"blue"},{"text":"赢得了这一回合比赛!","bold":true,"color":"green"}]
execute if score #blue score matches 0 run function myduty:main/mode_4/score/win_blue

execute if score #blue_player ready_player matches 1.. if score #red_player ready_player matches 0 run function myduty:main/mode_4/score/win_blue
execute if score #red_player ready_player matches 1.. if score #blue_player ready_player matches 0 run function myduty:main/mode_4/score/win_red