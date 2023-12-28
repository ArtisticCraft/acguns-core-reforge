#呼吸回血
execute as @a if score @s damage_taken matches 1.. run function myduty:main/health/healing/main
execute as @a if score @s healing_times matches ..120 run scoreboard players remove @s healing_times 1
execute as @a if score @s healing_times matches 0 run function myduty:main/health/healing/healing
effect clear @a[scores={health=30}] minecraft:regeneration