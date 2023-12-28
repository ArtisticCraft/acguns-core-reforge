scoreboard players add #start_timer_md5 start_timer_md5 1
execute if score #start_timer_md5 start_timer_md5 matches 1.. run effect give @a minecraft:invisibility 1 0 true
execute if score #start_timer_md5 start_timer_md5 matches 1.. run effect give @a minecraft:speed 1 1 true
execute if score #start_timer_md5 start_timer_md5 matches 110 run title @a times 0 20 0
execute if score #start_timer_md5 start_timer_md5 matches 110 run title @a title 15
execute if score #start_timer_md5 start_timer_md5 matches 130 run title @a title 14
execute if score #start_timer_md5 start_timer_md5 matches 150 run title @a title 13
execute if score #start_timer_md5 start_timer_md5 matches 170 run title @a title 12
execute if score #start_timer_md5 start_timer_md5 matches 190 run title @a title 11
execute if score #start_timer_md5 start_timer_md5 matches 210 run title @a title 10
execute if score #start_timer_md5 start_timer_md5 matches 230 run title @a title 9
execute if score #start_timer_md5 start_timer_md5 matches 250 run title @a title 8
execute if score #start_timer_md5 start_timer_md5 matches 270 run title @a title 7
execute if score #start_timer_md5 start_timer_md5 matches 290 run title @a title 6
execute if score #start_timer_md5 start_timer_md5 matches 310 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score #start_timer_md5 start_timer_md5 matches 310 run title @a title 5
execute if score #start_timer_md5 start_timer_md5 matches 330 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score #start_timer_md5 start_timer_md5 matches 330 run title @a title 4
execute if score #start_timer_md5 start_timer_md5 matches 350 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score #start_timer_md5 start_timer_md5 matches 350 run title @a title 3
execute if score #start_timer_md5 start_timer_md5 matches 370 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score #start_timer_md5 start_timer_md5 matches 370 run title @a title 2
execute if score #start_timer_md5 start_timer_md5 matches 390 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score #start_timer_md5 start_timer_md5 matches 390 run title @a title 1
execute if score #start_timer_md5 start_timer_md5 matches 410 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score #start_timer_md5 start_timer_md5 matches 410 run title @a title {"text": "Go!"}
execute if score #start_timer_md5 start_timer_md5 matches 410 run function myduty:main/mode_5/start/main