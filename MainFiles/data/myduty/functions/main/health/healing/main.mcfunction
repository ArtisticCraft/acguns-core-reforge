scoreboard players set @s healing_times 120
scoreboard players reset @s damage_taken
effect clear @a[scores={healing_times=120}] minecraft:regeneration
