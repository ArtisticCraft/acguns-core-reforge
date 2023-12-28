scoreboard objectives remove kill
scoreboard objectives remove death
scoreboard objectives remove death2
scoreboard objectives remove gametime_min
scoreboard objectives remove gametime_sec
bossbar remove mode_2_hud
bossbar remove mode_2_score
bossbar remove gametime
kill @e[tag=gametime_sec_0]
effect clear @a minecraft:glowing

function myduty:main/reset