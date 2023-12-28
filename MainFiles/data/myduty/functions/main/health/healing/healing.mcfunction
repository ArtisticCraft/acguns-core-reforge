execute at @s run playsound block.brewing_stand.brew block @s[scores={health=..20},gamemode=adventure]
effect give @s minecraft:regeneration 2 5 true
scoreboard players reset @s healing_times