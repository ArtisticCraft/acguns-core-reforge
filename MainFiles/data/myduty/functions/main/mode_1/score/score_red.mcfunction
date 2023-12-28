scoreboard players operation #red score -= @s kill
scoreboard players operation #red score_show += @s kill
scoreboard players operation @s kda_k += @s kill
function myduty:main/kill/level
function myduty:main/mode_1/score/show_score
execute if score #red score matches 0 run function myduty:main/mode_1/score/win_red
scoreboard players reset @s kill