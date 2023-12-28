execute if score #random_map map matches 1 run function myduty:lobby/map/random/1
execute if score #random_map map matches 2 run function myduty:lobby/map/random/2
scoreboard objectives add start_gametimer dummy
scoreboard players set #mode start 1
replaceitem entity @a hotbar.4 air
particle cloud 184 5 198 0.3 0.3 0.3 0.5 100 force @a
execute as @a at @s run playsound levelup block @s ~ ~ ~ 1 1
setblock 184 5 198 air
tag @a add player_game

#区块预加载
execute if score #map map matches 1 run forceload add -178 428 -106 338
execute if score #map map matches 2 run forceload add -752 451 -649 354
execute if score #map map matches 3 run forceload add -328 339 -476 489
execute if score #map map matches 4 run forceload add 261 522 94 676
execute if score #map map matches 5 run forceload add 570 560 705 718
execute if score #map map matches 6 run forceload add 1047 646 1131 603
execute if score #map map matches 7 run forceload add 1624 585 1505 697
execute if score #map map matches 8 run forceload add 2281 499 2085 725
execute if score #map map matches 9 run forceload add 2921 690 3050 556
#设置出生点
execute if score #map map matches 1 run setworldspawn -147 13 382 0
execute if score #map map matches 2 run setworldspawn -682 18 386 0
execute if score #map map matches 3 run setworldspawn -388 14 387 0
execute if score #map map matches 4 run setworldspawn 174 9 634 -154
execute if score #map map matches 5 run setworldspawn 605 15 643 -90
execute if score #map map matches 6 run setworldspawn 1084 11 611 0
execute if score #map map matches 7 run setworldspawn 1568 13 683 -180
execute if score #map map matches 8 run setworldspawn 2175 10 612 -42
execute if score #map map matches 9 run setworldspawn 2978 6 644 120