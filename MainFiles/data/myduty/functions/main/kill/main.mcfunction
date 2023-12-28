scoreboard players operation @s continuous_kill += @s kill
scoreboard players set @s kill_time 200
execute if entity @s[team=blue] run function myduty:main/kill/blue
execute if entity @s[team=red] run function myduty:main/kill/red