tag @a add gameover
effect give @a minecraft:instant_health 1 5 true
effect give @a minecraft:resistance 16 255 true
execute as @a at @s run playsound levelup master @s ~ ~ ~ 1 1
title @a times 10 120 10
title @a title [{"text":"战术核心 ","bold":true,"color":"red"},{"text":"胜利!","color":"gold"}]
title @a subtitle {"text": "时间耗尽"}
tellraw @a [{"text":"[","bold":true},{"text":"注意","bold":true,"color":"gold"},{"text":"]: ","bold":true},{"text":"恭喜","bold":true,"color":"green"},{"text":"战术核心","bold":true,"color":"red"},{"text":"赢得了本场比赛!","bold":true,"color":"green"}]
schedule function myduty:main/mode_1/gameover 15s append