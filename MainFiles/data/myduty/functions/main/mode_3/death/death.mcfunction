execute as @s at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 0
tag @s[team=blue] remove domination_ct
tag @s[team=red] remove domination_t
scoreboard players add @s death2 100
scoreboard players reset @s continuous_kill
scoreboard players reset @s kill_time
gamemode spectator @s
title @s times 5 20 5
title @s title {"text": "五秒后重生...","color": "red"}
scoreboard players reset @s death