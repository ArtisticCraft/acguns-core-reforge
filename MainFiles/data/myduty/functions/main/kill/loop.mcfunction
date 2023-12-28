execute if score @s kill_time matches ..200 run scoreboard players remove @s kill_time 1
execute if score @s kill_time matches 0 run scoreboard players reset @s continuous_kill
execute if score @s kill_time matches 0 run scoreboard players reset @s kill_time