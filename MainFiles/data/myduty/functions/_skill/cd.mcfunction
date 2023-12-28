scoreboard players remove @s cd_time 1
execute if score @s cd_time matches ..0 run tag @s remove cd
execute if score @s cd_time matches ..0 run scoreboard players reset @s cd_time
execute if score @s cd_time matches ..0 run scoreboard players reset @s skill_time