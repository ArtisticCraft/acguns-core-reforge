tag @a add gameover
tag @s add mvp_blue
effect give @a minecraft:instant_health 1 5 true
effect give @a minecraft:resistance 16 255 true
execute as @a at @s run playsound levelup master @s ~ ~ ~ 1 1
title @a times 10 120 10
title @a[scores={score=..0}] title {"text":"胜利!","color":"gold"}
title @a[scores={score=1..}] title {"text":"你输了!","color":"red"}
title @a subtitle {"text": "","extra":[{"text": "MVP: "},{"selector": "@a[scores={score=..0},limit=1]"}]}
tellraw @a {"text": "","extra":[{"text":"[","bold":true},{"text":"注意","bold":true,"color":"gold"},{"text":"]: ","bold":true},{"text":"恭喜玩家","bold":true,"color":"green"},{"selector": "@a[scores={score=..0},limit=1]"},{"text":"赢得了本场比赛!","bold":true,"color":"green"}]}
schedule function myduty:main/mode_5/gameover 15s append

scoreboard players set #firework_time firework_time 3
function myduty:main/kda/firework_blue