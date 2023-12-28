scoreboard players set @s random_max 14
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random"]}
execute store result score @s random run data get entity @e[tag=random,limit=1,sort=nearest] UUID[0]
kill @e[tag=random,limit=1,sort=nearest]
scoreboard players operation @s random %= @s random_max
execute if score @s random matches 0 run tp @s 172 4 600 -90 0
execute if score @s random matches 1 run tp @s 171 4 622 0 0
execute if score @s random matches 2 run tp @s 139 4 647 -180 0
execute if score @s random matches 3 run tp @s 176 9 653 180 0
execute if score @s random matches 4 run tp @s 169 4 644 0 0
execute if score @s random matches 5 run tp @s 208 4 611 0 0
execute if score @s random matches 6 run tp @s 182 5 576 -90 0
execute if score @s random matches 7 run tp @s 149 4 582 0 0
execute if score @s random matches 8 run tp @s 140 4 618 180 0
execute if score @s random matches 9 run tp @s 194 11 575 -90 0
execute if score @s random matches 10 run tp @s 211 4 536 0 0
execute if score @s random matches 11 run tp @s 168 4 559 90 0
execute if score @s random matches 12 run tp @s 198 4 552 0 0
execute if score @s random matches 13 run tp @s 178 4.5 606 -90 0
scoreboard players reset @s random
scoreboard players reset @s random_max