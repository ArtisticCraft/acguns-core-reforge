scoreboard players set @s random_max 18
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random"]}
execute store result score @s random run data get entity @e[tag=random,limit=1,sort=nearest] UUID[0]
kill @e[tag=random,limit=1,sort=nearest]
scoreboard players operation @s random %= @s random_max
execute if score @s random matches 0 run tp @s 2192 5 632
execute if score @s random matches 1 run tp @s 2184 8 690
execute if score @s random matches 2 run tp @s 2171 9 676
execute if score @s random matches 3 run tp @s 2157 8 662
execute if score @s random matches 4 run tp @s 2141 8 621
execute if score @s random matches 5 run tp @s 2176 8 569
execute if score @s random matches 6 run tp @s 2180 8 572
execute if score @s random matches 7 run tp @s 2198 8 586
execute if score @s random matches 8 run tp @s 2184 5 620
execute if score @s random matches 9 run tp @s 2180 8 608
execute if score @s random matches 10 run tp @s 2165 8 583
execute if score @s random matches 11 run tp @s 2162 8 626
execute if score @s random matches 12 run tp @s 2163 8 686
execute if score @s random matches 13 run tp @s 2227 5 599
execute if score @s random matches 14 run tp @s 2224 8 679
execute if score @s random matches 15 run tp @s 2186 5 628
execute if score @s random matches 16 run tp @s 2213 8 610
execute if score @s random matches 17 run tp @s 2166 5 650
scoreboard players reset @s random
scoreboard players reset @s random_max