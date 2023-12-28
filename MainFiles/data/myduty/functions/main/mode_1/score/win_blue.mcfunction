tag @a add gameover
effect give @a minecraft:instant_health 1 5 true
effect give @a minecraft:resistance 16 255 true
execute as @a at @s run playsound levelup master @s ~ ~ ~ 1 1
title @a times 10 120 10
title @a title [{"text":"特别小组 ","bold":true,"color":"blue"},{"text":"胜利!","color":"gold"}]
title @a subtitle {"text": "","extra":[{"text": "MVP: "},{"selector": "@a[tag=mvp_blue,limit=1]"}]}
tellraw @a [{"text":"[","bold":true},{"text":"注意","bold":true,"color":"gold"},{"text":"]: ","bold":true},{"text":"恭喜","bold":true,"color":"green"},{"text":"特别小组","bold":true,"color":"blue"},{"text":"赢得了本场比赛!","bold":true,"color":"green"}]
schedule function myduty:main/mode_1/gameover 15s append

scoreboard players set #firework_time firework_time 3
function myduty:main/kda/firework_blue