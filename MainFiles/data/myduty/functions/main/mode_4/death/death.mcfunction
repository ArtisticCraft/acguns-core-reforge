execute at @s if entity @s[team=red,tag=c4] run function myduty:main/mode_4/c4/drop
execute as @s at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 0
scoreboard players reset @s continuous_kill
scoreboard players reset @s kill_time
gamemode spectator @s
tag @s add death
scoreboard players set @s revive_time 120
tag @s add revive
scoreboard players reset @s revive_thing
scoreboard players set @s revive_thing_fwq 20
clear @s #tac
execute if score #mode_4 start matches 1 run title @s times 5 60 5
execute if score #mode_4 start matches 1 run title @s title {"text": "你已阵亡,等待下一回合","color": "red"}
scoreboard players reset @s death