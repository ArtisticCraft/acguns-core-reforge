execute as @e[tag=skill_5] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute as @e[tag=skill_5] at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
execute as @e[tag=skill_5] at @s if block ~ ~-0.01 ~ air run tp @s ~ ~-0.01 ~
execute as @e[tag=blue,tag=skill_5,tag=!uid] at @s if entity @a[gamemode=!spectator,distance=..10,team=red,tag=!revive] run function myduty:_skill/skill_5/activation/blue
execute as @e[tag=red,tag=skill_5,tag=!uid] at @s if entity @a[gamemode=!spectator,distance=..10,team=blue,tag=!revive] run function myduty:_skill/skill_5/activation/red
execute as @e[tag=skill_5,tag=!uid] at @s unless entity @s[nbt={Health:500.0f}] run function myduty:_skill/skill_5/clear
execute as @e[tag=skill_5] at @s if entity @s[nbt={PortalCooldown:0}] run function myduty:_skill/skill_5/clear