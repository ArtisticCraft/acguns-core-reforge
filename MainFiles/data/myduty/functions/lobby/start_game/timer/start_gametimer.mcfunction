scoreboard players add #start_gametimer start_gametimer 1
execute if score #start_gametimer start_gametimer matches 1 run title @a times 0 21 0
execute if score #start_gametimer start_gametimer matches 1 run title @a title [{"text":"游戏将在","bold":true,"color":"red"},{"text":"3","bold":true,"color": "white"},{"text":"秒后开始...","bold":true,"color":"red"}]
execute if score #start_gametimer start_gametimer matches 21 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score #start_gametimer start_gametimer matches 21 run title @a title [{"text":"游戏将在","bold":true,"color":"red"},{"text":"2","bold":true,"color": "white"},{"text":"秒后开始...","bold":true,"color":"red"}]
execute if score #start_gametimer start_gametimer matches 41 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score #start_gametimer start_gametimer matches 41 run title @a title [{"text":"游戏将在","bold":true,"color":"red"},{"text":"1","bold":true,"color": "white"},{"text":"秒后开始...","bold":true,"color":"red"}]
execute if score #start_gametimer start_gametimer matches 61 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score #start_gametimer start_gametimer matches 61 run title @a title [{"text":"游戏将在","bold":true,"color":"red"},{"text":"0","bold":true,"color": "white"},{"text":"秒后开始...","bold":true,"color":"red"}]
execute if score #start_gametimer start_gametimer matches 81 run function myduty:lobby/start_game/start
execute if score #start_gametimer start_gametimer matches 81 run scoreboard objectives remove start_gametimer