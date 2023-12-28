scoreboard players add #start_timer start_timer 1
execute if score #start_timer start_timer matches 1 run execute as @a run function myduty:main/map_tp
execute if score #start_timer start_timer matches 1.. run function myduty:main/map_tp_back
execute if score #start_timer start_timer matches 110 run title @a times 0 20 0
execute if score #start_timer start_timer matches 110 run title @a title 15
execute if score #start_timer start_timer matches 130 run title @a title 14
execute if score #start_timer start_timer matches 150 run title @a title 13
execute if score #start_timer start_timer matches 170 run title @a title 12
execute if score #start_timer start_timer matches 190 run title @a title 11
execute if score #start_timer start_timer matches 210 run title @a title 10
execute if score #start_timer start_timer matches 230 run title @a title 9
execute if score #start_timer start_timer matches 250 run title @a title 8
execute if score #start_timer start_timer matches 270 run title @a title 7
execute if score #start_timer start_timer matches 290 run title @a title 6
execute if score #start_timer start_timer matches 310 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score #start_timer start_timer matches 310 run title @a title 5
execute if score #start_timer start_timer matches 330 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score #start_timer start_timer matches 330 run title @a title 4
execute if score #start_timer start_timer matches 350 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score #start_timer start_timer matches 350 run title @a title 3
execute if score #start_timer start_timer matches 370 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score #start_timer start_timer matches 370 run title @a title 2
execute if score #start_timer start_timer matches 390 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score #start_timer start_timer matches 390 run title @a title 1
execute if score #start_timer start_timer matches 410 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score #start_timer start_timer matches 410 run title @a title {"text": "Go!"}
execute if score #start_timer start_timer matches 410 run function myduty:lobby/start_game/start_game
execute if score #start_timer start_timer matches 410 run scoreboard objectives remove start_timer