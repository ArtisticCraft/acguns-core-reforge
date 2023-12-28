#击杀
function myduty:main/kill/main
scoreboard players operation @s kda_k += @s kill
#击杀装备  
execute if score @s kda_k matches 1 run function myduty:main/mode_2/score/score_guns/1
execute if score @s kda_k matches 2 run function myduty:main/mode_2/score/score_guns/2
execute if score @s kda_k matches 3 run function myduty:main/mode_2/score/score_guns/3
execute if score @s kda_k matches 4 run function myduty:main/mode_2/score/score_guns/4
execute if score @s kda_k matches 5 run function myduty:main/mode_2/score/score_guns/5
execute if score @s kda_k matches 6 run function myduty:main/mode_2/score/score_guns/6
execute if score @s kda_k matches 7 run function myduty:main/mode_2/score/score_guns/7
execute if score @s kda_k matches 8 run function myduty:main/mode_2/score/score_guns/8
execute if score @s kda_k matches 9 run function myduty:main/mode_2/score/score_guns/9
execute if score @s kda_k matches 10 run function myduty:main/mode_2/score/score_guns/10
execute if score @s kda_k matches 11 run function myduty:main/mode_2/score/score_guns/11
execute if score @s kda_k matches 12 run function myduty:main/mode_2/score/score_guns/12
execute if score @s kda_k matches 13 run function myduty:main/mode_2/score/score_guns/13
execute if score @s kda_k matches 14 run function myduty:main/mode_2/score/score_guns/14
execute if score @s kda_k matches 15 run function myduty:main/mode_2/score/score_guns/15
execute if score @s kda_k matches 16 run function myduty:main/mode_2/score/score_guns/16
execute if score @s kda_k matches 17 run function myduty:main/mode_2/score/score_guns/17
execute if score @s kda_k matches 18 run function myduty:main/mode_2/score/score_guns/18
execute if score @s kda_k matches 19 run function myduty:main/mode_2/score/score_guns/19
execute if score @s kda_k matches 19 run function myduty:main/mode_2/score/score_19
#获取最高分
execute if score @s[team=blue] kda_k > #max_blue kda_k run scoreboard players operation #max_blue kda_k = @s kda_k
execute if score @s[team=red] kda_k > #max_red kda_k run scoreboard players operation #max_red kda_k = @s kda_k
#胜利触发
execute if score #max_blue kda_k matches 20.. unless entity @a[tag=gameover] run function myduty:main/mode_2/score/win_blue
execute if score #max_red kda_k matches 20.. unless entity @a[tag=gameover] run function myduty:main/mode_2/score/win_red
#0
function myduty:main/mode_2/score/show_score
scoreboard players reset @s kill