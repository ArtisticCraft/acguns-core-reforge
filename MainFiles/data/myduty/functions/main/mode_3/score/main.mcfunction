execute as @e[tag=flag_a] at @s unless entity @a[tag=domination_ct,distance=..5] run scoreboard players reset @s ct_score_timer_a
execute as @e[tag=flag_a] at @s unless entity @a[tag=domination_t,distance=..5] run scoreboard players reset @s t_score_timer_a
execute as @e[tag=flag_a] at @s unless entity @a[distance=..5,tag=!over_a,gamemode=adventure] run bossbar remove score_timer_a
execute as @e[tag=flag_a,team=] at @s if entity @a[gamemode=!spectator,tag=domination_ct,tag=!over_a,distance=..5] unless entity @a[distance=..5,gamemode=!spectator,tag=domination_t] run function myduty:main/mode_3/score/score_timer_ct_a
execute as @e[tag=flag_a,team=] at @s if entity @a[gamemode=!spectator,tag=domination_t,tag=!over_a,distance=..5] unless entity @a[distance=..5,gamemode=!spectator,tag=domination_ct] run function myduty:main/mode_3/score/score_timer_t_a

execute as @e[tag=flag_b] at @s unless entity @a[tag=domination_ct,distance=..5] run scoreboard players reset @s ct_score_timer_b
execute as @e[tag=flag_b] at @s unless entity @a[tag=domination_t,distance=..5] run scoreboard players reset @s t_score_timer_b
execute as @e[tag=flag_b] at @s unless entity @a[distance=..5,tag=!over_b,gamemode=adventure] run bossbar remove score_timer_b
execute as @e[tag=flag_b,team=] at @s if entity @a[gamemode=!spectator,tag=domination_ct,tag=!over_b,distance=..5] unless entity @a[distance=..5,gamemode=!spectator,tag=domination_t] run function myduty:main/mode_3/score/score_timer_ct_b
execute as @e[tag=flag_b,team=] at @s if entity @a[gamemode=!spectator,tag=domination_t,tag=!over_b,distance=..5] unless entity @a[distance=..5,gamemode=!spectator,tag=domination_ct] run function myduty:main/mode_3/score/score_timer_t_b

execute as @e[tag=flag_c] at @s unless entity @a[tag=domination_ct,distance=..5] run scoreboard players reset @s ct_score_timer_c
execute as @e[tag=flag_c] at @s unless entity @a[tag=domination_t,distance=..5] run scoreboard players reset @s t_score_timer_c
execute as @e[tag=flag_c] at @s unless entity @a[distance=..5,tag=!over_c,gamemode=adventure] run bossbar remove score_timer_c
execute as @e[tag=flag_c,team=] at @s if entity @a[gamemode=!spectator,tag=domination_ct,tag=!over_c,distance=..5] unless entity @a[distance=..5,gamemode=!spectator,tag=domination_t] run function myduty:main/mode_3/score/score_timer_ct_c
execute as @e[tag=flag_c,team=] at @s if entity @a[gamemode=!spectator,tag=domination_t,tag=!over_c,distance=..5] unless entity @a[distance=..5,gamemode=!spectator,tag=domination_ct] run function myduty:main/mode_3/score/score_timer_t_c

execute if score #flag_score_timer flag_score_timer matches ..100 run scoreboard players remove #flag_score_timer flag_score_timer 1
execute if score #flag_score_timer flag_score_timer matches 0 if score #flag_score ct_flag_score matches 1 run scoreboard players add #ct_score ct_score_show 1
execute if score #flag_score_timer flag_score_timer matches 0 if score #flag_score ct_flag_score matches 1 run scoreboard players remove #ct_score ct_score 1
execute if score #flag_score_timer flag_score_timer matches 0 if score #flag_score ct_flag_score matches 2 run scoreboard players add #ct_score ct_score_show 2
execute if score #flag_score_timer flag_score_timer matches 0 if score #flag_score ct_flag_score matches 2 run scoreboard players remove #ct_score ct_score 2
execute if score #flag_score_timer flag_score_timer matches 0 if score #flag_score ct_flag_score matches 3 run scoreboard players add #ct_score ct_score_show 3
execute if score #flag_score_timer flag_score_timer matches 0 if score #flag_score ct_flag_score matches 3 run scoreboard players remove #ct_score ct_score 3

execute if score #flag_score_timer flag_score_timer matches 0 if score #flag_score t_flag_score matches 1 run scoreboard players add #t_score t_score_show 1
execute if score #flag_score_timer flag_score_timer matches 0 if score #flag_score t_flag_score matches 1 run scoreboard players remove #t_score t_score 1
execute if score #flag_score_timer flag_score_timer matches 0 if score #flag_score t_flag_score matches 2 run scoreboard players add #t_score t_score_show 2
execute if score #flag_score_timer flag_score_timer matches 0 if score #flag_score t_flag_score matches 2 run scoreboard players remove #t_score t_score 2
execute if score #flag_score_timer flag_score_timer matches 0 if score #flag_score t_flag_score matches 3 run scoreboard players add #t_score t_score_show 3
execute if score #flag_score_timer flag_score_timer matches 0 if score #flag_score t_flag_score matches 3 run scoreboard players remove #t_score t_score 3
execute if score #flag_score_timer flag_score_timer matches 0 run function myduty:main/mode_3/score/show_score
execute if score #flag_score_timer flag_score_timer matches 0 run scoreboard players set #flag_score_timer flag_score_timer 100

execute if score #ct_score ct_score matches ..0 run function myduty:main/mode_3/score/win_ct
execute if score #t_score t_score matches ..0 run function myduty:main/mode_3/score/win_t