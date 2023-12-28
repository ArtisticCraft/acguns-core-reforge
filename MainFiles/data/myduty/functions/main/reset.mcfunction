tellraw @a {"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players set #mode start 0
scoreboard players reset @a uuid
setworldspawn 184 4 183 0
setblock 184 6 182 air
setblock 184 5 198 minecraft:oak_button[face=floor,facing=south,powered=false]
data merge entity @e[tag=start_game,limit=1] {CustomNameVisible:0b}
tag @a add kda
execute if entity @a[tag=kda] run tellraw @a [{"text":"[","bold":true,"color":"white"},{"text":"赛后战绩KD","bold":true,"color":"gold"},{"text":"]","bold":true,"color":"white"}]
execute as @a[team=blue,tag=kda] run function myduty:main/kda/blue
execute as @a[team=red,tag=kda] run function myduty:main/kda/red
kill @e[tag=skill_4]
kill @e[tag=skill_5]
kill @e[tag=test1]
kill @e[tag=test2]

scoreboard objectives remove kda_k
scoreboard objectives remove kda_d
team remove map_test
team remove lobby
team remove blue
team remove red
team add blue {"text": "队伍聊天","bold": true}
team modify blue prefix {"text": "","color": "blue"}
team modify blue color blue
team modify blue friendlyFire false
team modify blue nametagVisibility always
team add red {"text": "队伍聊天","bold": true}
team modify red prefix {"text": "","color": "red"}
team modify red color red
team modify red friendlyFire false
team modify red nametagVisibility always
team add map_test {"text": "队伍聊天","bold": true}
team modify map_test prefix {"text": "","color": "dark_green"}
team modify map_test color dark_green
team modify map_test friendlyFire false
team add lobby {"text": "队伍聊天","bold": true}
team modify lobby prefix {"text": "","color": "gray"}
team modify lobby color gray

#区块卸载
execute if score #map map matches 1 run forceload remove -178 428 -106 338
execute if score #map map matches 2 run forceload remove -752 451 -649 354
execute if score #map map matches 3 run forceload remove -328 339 -476 489
execute if score #map map matches 4 run forceload remove 261 522 94 676
execute if score #map map matches 5 run forceload remove 570 560 705 718
execute if score #map map matches 6 run forceload remove 1047 646 1131 603
execute if score #map map matches 7 run forceload remove 1624 585 1505 697
execute if score #map map matches 8 run forceload remove 2281 499 2085 725
execute if score #map map matches 9 run forceload remove 2921 690 3050 556
