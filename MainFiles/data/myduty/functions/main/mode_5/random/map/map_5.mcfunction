scoreboard players set @s random_max 14
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random"]}
execute store result score @s random run data get entity @e[tag=random,limit=1,sort=nearest] UUID[0]
kill @e[tag=random,limit=1,sort=nearest]
scoreboard players operation @s random %= @s random_max
execute if score @s random matches 0 run tp @s 633 4 632 0 0
execute if score @s random matches 1 run tp @s 657 4 630 0 0
execute if score @s random matches 2 run tp @s 683 4 616 90 0
execute if score @s random matches 3 run tp @s 660 4 613 90 0
execute if score @s random matches 4 run tp @s 635 4 585 90 0
execute if score @s random matches 5 run tp @s 618 8 630 90 0
execute if score @s random matches 6 run tp @s 607 6 678 -90 0
execute if score @s random matches 7 run tp @s 675 4 700 180 0
execute if score @s random matches 8 run tp @s 626 4 603 -180 0
execute if score @s random matches 9 run tp @s 622 10 663 -180 0
execute if score @s random matches 10 run tp @s 636 10 671 180 0
execute if score @s random matches 11 run tp @s 684 4 654 -180 0
execute if score @s random matches 12 run tp @s 610 4 613 0 0
execute if score @s random matches 13 run tp @s 639 4 565 0 0
scoreboard players reset @s random
scoreboard players reset @s random_max