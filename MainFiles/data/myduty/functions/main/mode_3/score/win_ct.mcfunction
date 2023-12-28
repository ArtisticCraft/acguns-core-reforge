scoreboard players operation #ct_score ct_score_show = #mode_3_score_set mode_3_score_set
tag @a add gameover
effect give @a minecraft:instant_health 1 5 true
effect give @a minecraft:resistance 16 255 true
execute at @a run playsound levelup block @a ~ ~ ~ 1 1
title @a times 10 120 10
title @a title [{"text":"特别小组 ","bold":true,"color":"blue"},{"text":"胜利!","color":"gold"}]
title @a subtitle {"text": "","extra":[{"text": "MVP: "},{"selector": "@a[tag=mvp_blue,limit=1]"}]}
tellraw @a [{"text":"[","bold":true},{"text":"注意","bold":true,"color":"gold"},{"text":"]: ","bold":true},{"text":"恭喜","bold":true,"color":"green"},{"text":"特别小组","bold":true,"color":"blue"},{"text":"赢得了本场比赛!","bold":true,"color":"green"}]
schedule function myduty:main/mode_3/gameover 15s append

scoreboard players set #firework_time firework_time 3
function myduty:main/kda/firework_blue

scoreboard objectives remove ct_score_timer_a
scoreboard objectives remove t_score_timer_a
scoreboard objectives remove ct_score_timer_b
scoreboard objectives remove t_score_timer_b
scoreboard objectives remove ct_score_timer_c
scoreboard objectives remove t_score_timer_c
scoreboard objectives remove ct_score
scoreboard objectives remove t_score
scoreboard objectives remove flag_score_timer
bossbar remove score_timer_a
bossbar remove score_timer_b
bossbar remove score_timer_c
tag @a remove domination_ct
tag @a remove domination_t