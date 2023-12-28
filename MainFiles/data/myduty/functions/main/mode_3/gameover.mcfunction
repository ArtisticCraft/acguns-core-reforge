kill @e[tag=flag]
kill @e[tag=a]
kill @e[tag=b]
kill @e[tag=c]
kill @e[type=area_effect_cloud,tag=AA]
kill @e[type=area_effect_cloud,tag=BB]
kill @e[type=area_effect_cloud,tag=CC]
scoreboard objectives remove revive_thing
scoreboard objectives remove revive_thing_fwq
scoreboard objectives remove kill
scoreboard objectives remove death
scoreboard objectives remove death2
scoreboard objectives remove ct_score_timer_a
scoreboard objectives remove t_score_timer_a
scoreboard objectives remove ct_score_timer_b
scoreboard objectives remove t_score_timer_b
scoreboard objectives remove ct_score_timer_c
scoreboard objectives remove t_score_timer_c
scoreboard objectives remove ct_score_limit_a
scoreboard objectives remove t_score_limit_a
scoreboard objectives remove ct_score_limit_b
scoreboard objectives remove t_score_limit_b
scoreboard objectives remove ct_score_limit_c
scoreboard objectives remove t_score_limit_c
scoreboard objectives remove ct_flag_score
scoreboard objectives remove t_flag_score
scoreboard objectives remove ct_score_show
scoreboard objectives remove t_score_show
scoreboard objectives remove flag_score_timer
scoreboard objectives remove ct_score
scoreboard objectives remove t_score
bossbar remove minecraft:domination_hud
bossbar remove minecraft:domination
bossbar remove minecraft:domination_flag
bossbar remove score_timer_a
bossbar remove score_timer_b
bossbar remove score_timer_c

function myduty:main/reset