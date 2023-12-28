execute as @e[tag=skill_4] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute as @e[tag=skill_4] at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
execute as @e[tag=skill_4] at @s if block ~ ~-0.01 ~ air run tp @s ~ ~-0.01 ~
execute as @e[tag=blue,tag=skill_4,tag=!uid] at @s if entity @a[gamemode=!spectator,distance=..1,team=red,tag=!revive,tag=!gameover] run function myduty:_skill/skill_4/kill/blue
execute as @e[tag=red,tag=skill_4,tag=!uid] at @s if entity @a[gamemode=!spectator,distance=..1,team=blue,tag=!revive,tag=!gameover] run function myduty:_skill/skill_4/kill/red
execute as @e[tag=blue,tag=skill_4,tag=!uid] at @s unless entity @s[nbt={Health:500.0f}] run function myduty:_skill/skill_4/kill/blue
execute as @e[tag=red,tag=skill_4,tag=!uid] at @s unless entity @s[nbt={Health:500.0f}] run function myduty:_skill/skill_4/kill/red
execute as @e[tag=skill_4] at @s if entity @s[nbt={PortalCooldown:0}] run function myduty:_skill/skill_4/clear