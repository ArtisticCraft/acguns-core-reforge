scoreboard players reset @s revive_thing
scoreboard players reset @s revive_thing_fwq
scoreboard players reset @s death
function myduty:main/mode_5/random/gun/main
execute as @s at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 0
scoreboard players add @s death2 100
scoreboard players reset @s continuous_kill
scoreboard players reset @s kill_time
gamemode spectator @s
title @s times 5 20 5
title @s title {"text": "五秒后重生...","color": "red"}