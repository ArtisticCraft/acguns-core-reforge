scoreboard objectives remove revive_thing
scoreboard objectives remove revive_thing_fwq
scoreboard objectives remove kill
scoreboard objectives remove death
scoreboard objectives remove score
scoreboard objectives remove score_show
scoreboard objectives remove gametime_min
scoreboard objectives remove gametime_sec
scoreboard objectives remove reght_click_c4
scoreboard objectives remove c4_interact
scoreboard objectives remove start_timer_md4
scoreboard objectives remove kda_k_4
scoreboard objectives remove sprint_one_cm
scoreboard objectives remove round
bossbar remove mode_4_hud
bossbar remove mode_4_score
bossbar remove gametime
bossbar remove mode_4_pt
kill @e[tag=gametime_sec_0]
kill @e[type=armor_stand,tag=c4]
kill @e[type=armor_stand,tag=c4_text]
kill @e[type=armor_stand,tag=armament]
kill @e[type=armor_stand,tag=c4_pt]
kill @e[type=armor_stand,tag=c4_install]
setblock 210 4 618 air
setblock 210 4 619 air
setblock 180 4 591 air
setblock 179 4 591 air
setblock 662 4 685 air
setblock 661 4 685 air
setblock 594 4 637 air
setblock 593 4 637 air
setblock 1552 5 663 air
setblock 1553 5 663 air
setblock 1526 6 621 air
setblock 1525 6 621 air
setblock 2165 8 585 air
setblock 2165 8 586 air
setblock 2177 8 683 air
setblock 2176 8 683 air
setblock 3031 9 667 air
setblock 3030 9 667 air
setblock 3018 11 594 air
setblock 3018 11 593 air
function myduty:main/reset