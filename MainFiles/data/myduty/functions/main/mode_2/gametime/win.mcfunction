execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=..0}] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["gametime_sec_0"],CustomName:'{"text":"0","bold":true}'}
scoreboard objectives remove gametime_sec

tag @a add gameover
effect give @a minecraft:instant_health 1 5 true
effect give @a minecraft:resistance 16 255 true
execute as @a at @s run playsound levelup master @s ~ ~ ~ 1 1
title @a times 10 120 10
title @a title ["",{"text":"平局!","color":"gold"}]
title @a subtitle {"text": "时间耗尽,无胜利者产生"}
tellraw @a [{"text":"[","bold":true},{"text":"注意","bold":true,"color":"gold"},{"text":"]: ","bold":true},{"text":"本场比赛无任何赢家!","bold":true,"color":"red"}]
schedule function myduty:main/mode_2/gameover 15s append