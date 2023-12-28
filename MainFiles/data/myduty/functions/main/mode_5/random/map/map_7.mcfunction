scoreboard players set @s random_max 14
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random"]}
execute store result score @s random run data get entity @e[tag=random,limit=1,sort=nearest] UUID[0]
kill @e[tag=random,limit=1,sort=nearest]
scoreboard players operation @s random %= @s random_max
execute if score @s random matches 0 run tp @s 1561 6 630 180 0
execute if score @s random matches 1 run tp @s 1547 6 602 90 0
execute if score @s random matches 2 run tp @s 1555 4 593 0 0
execute if score @s random matches 3 run tp @s 1540 6 651 -90 0
execute if score @s random matches 4 run tp @s 1529 5 659 90 0
execute if score @s random matches 5 run tp @s 1514 6 653 180 0
execute if score @s random matches 6 run tp @s 1521 6 631 -90 0
execute if score @s random matches 7 run tp @s 1592 4 616 90 0
execute if score @s random matches 8 run tp @s 1600 4 645 90 0
execute if score @s random matches 9 run tp @s 1607 4 666 90 0
execute if score @s random matches 10 run tp @s 1543 4 688 -90 0
execute if score @s random matches 11 run tp @s 1535 6 652 180 0
execute if score @s random matches 12 run tp @s 1532 6 612 -90 0
execute if score @s random matches 13 run tp @s 1547 6 614 90 0
scoreboard players reset @s random
scoreboard players reset @s random_max