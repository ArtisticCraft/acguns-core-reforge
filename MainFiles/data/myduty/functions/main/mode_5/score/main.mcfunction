scoreboard players operation @s kda_k += @s kill
scoreboard players operation @s score -= @s kill
function myduty:main/mode_5/score/kill/main
function myduty:main/kill/level
scoreboard players reset @s kill
execute as @a if score @s kda_k > #max kda_k run scoreboard players operation #max kda_k = @s kda_k
function myduty:main/mode_5/score/show_score

execute if score @s score matches ..0 run function myduty:main/mode_5/score/win