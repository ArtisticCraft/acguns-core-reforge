scoreboard players set #random_map random_max 9
summon minecraft:area_effect_cloud 180 4 180 {Duration:1,Tags:["random"]}
execute store result score #random_map random run data get entity @e[tag=random,limit=1] UUID[0]
kill @e[tag=random,limit=1]
scoreboard players operation #random_map random %= #random_map random_max

execute if score #random_map random matches 0 run scoreboard players set #map map 1
execute if score #random_map random matches 1 run scoreboard players set #map map 2
execute if score #random_map random matches 2 run scoreboard players set #map map 3
execute if score #random_map random matches 3 run scoreboard players set #map map 4
execute if score #random_map random matches 4 run scoreboard players set #map map 5
execute if score #random_map random matches 5 run scoreboard players set #map map 6
execute if score #random_map random matches 6 run scoreboard players set #map map 7
execute if score #random_map random matches 7 run scoreboard players set #map map 8
execute if score #random_map random matches 8 run scoreboard players set #map map 9

scoreboard players reset #random_map random
scoreboard players reset #random_map random_max