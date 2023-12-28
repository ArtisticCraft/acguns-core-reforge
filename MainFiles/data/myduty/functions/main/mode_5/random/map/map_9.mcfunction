scoreboard players set @s random_max 22
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random"]}
execute store result score @s random run data get entity @e[tag=random,limit=1,sort=nearest] UUID[0]
kill @e[tag=random,limit=1,sort=nearest]
scoreboard players operation @s random %= @s random_max
execute if score @s random matches 0 run tp @s 2934 4 652
execute if score @s random matches 1 run tp @s 2967 4 659
execute if score @s random matches 2 run tp @s 2975 10 670
execute if score @s random matches 3 run tp @s 3006 9 677
execute if score @s random matches 4 run tp @s 3008 4 661
execute if score @s random matches 5 run tp @s 3038 4 636
execute if score @s random matches 6 run tp @s 3035 4 624
execute if score @s random matches 7 run tp @s 3035 5 609
execute if score @s random matches 8 run tp @s 3035 11 613
execute if score @s random matches 9 run tp @s 3030 9 632
execute if score @s random matches 10 run tp @s 2992 11 621
execute if score @s random matches 11 run tp @s 2999 4 608
execute if score @s random matches 12 run tp @s 2973 4 611
execute if score @s random matches 13 run tp @s 2932 6 613
execute if score @s random matches 14 run tp @s 2974 11 597
execute if score @s random matches 15 run tp @s 2986 4 658
execute if score @s random matches 16 run tp @s 3005 4 611
execute if score @s random matches 17 run tp @s 2985 4 606
execute if score @s random matches 18 run tp @s 2942 4 610
execute if score @s random matches 19 run tp @s 2972 11 576
execute if score @s random matches 20 run tp @s 2932 11 588
execute if score @s random matches 21 run tp @s 2931 11 618
scoreboard players reset @s random
scoreboard players reset @s random_max