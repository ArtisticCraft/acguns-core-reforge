scoreboard players add #start_timer_md4 start_timer_md4 1
execute if score #start_timer_md4 start_timer_md4 matches 1 run execute as @a run function myduty:main/map_tp
execute if score #start_timer_md4 start_timer_md4 matches 1.. run function myduty:main/map_tp_back
execute if score #start_timer_md4 start_timer_md4 matches 1.. run title @a[team=red] actionbar {"text":"","extra":[{"selector": "@a[team=red,tag=c4]"},{"text": " 是","bold": true},{"text": "C4炸弹","color": "red","bold": true},{"text": "携带者","bold": true}]}
execute if score #start_timer_md4 start_timer_md4 matches 2 if score #round round matches 2.. run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
execute if score #start_timer_md4 start_timer_md4 matches 110 run title @a times 0 20 0
execute if score #start_timer_md4 start_timer_md4 matches 110 run title @a title 15
execute if score #start_timer_md4 start_timer_md4 matches 130 run title @a title 14
execute if score #start_timer_md4 start_timer_md4 matches 150 run title @a title 13
execute if score #start_timer_md4 start_timer_md4 matches 170 run title @a title 12
execute if score #start_timer_md4 start_timer_md4 matches 190 run title @a title 11
execute if score #start_timer_md4 start_timer_md4 matches 210 run title @a title 10
execute if score #start_timer_md4 start_timer_md4 matches 230 run title @a title 9
execute if score #start_timer_md4 start_timer_md4 matches 250 run title @a title 8
execute if score #start_timer_md4 start_timer_md4 matches 270 run title @a title 7
execute if score #start_timer_md4 start_timer_md4 matches 290 run title @a title 6
execute if score #start_timer_md4 start_timer_md4 matches 310 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score #start_timer_md4 start_timer_md4 matches 310 run title @a title 5
execute if score #start_timer_md4 start_timer_md4 matches 330 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score #start_timer_md4 start_timer_md4 matches 330 run title @a title 4
execute if score #start_timer_md4 start_timer_md4 matches 350 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score #start_timer_md4 start_timer_md4 matches 350 run title @a title 3
execute if score #start_timer_md4 start_timer_md4 matches 370 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score #start_timer_md4 start_timer_md4 matches 370 run title @a title 2
execute if score #start_timer_md4 start_timer_md4 matches 390 run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if score #start_timer_md4 start_timer_md4 matches 390 run title @a title 1
execute if score #start_timer_md4 start_timer_md4 matches 410 run execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score #start_timer_md4 start_timer_md4 matches 410 run title @a title {"text": "Go!"}
execute if score #start_timer_md4 start_timer_md4 matches 410 run tag @a[tag=player_game,tag=!skill] add skill
execute if score #start_timer_md4 start_timer_md4 matches 410 run function myduty:main/mode_4/gametime/gametime
execute if score #start_timer_md4 start_timer_md4 matches 410 run scoreboard players set @a team_fight_menu 8888
execute if score #start_timer_md4 start_timer_md4 matches 410 run bossbar set mode_4_pt players
execute if score #start_timer_md4 start_timer_md4 matches 410 run tellraw @a [{"text":"[","bold":true},{"text":"提示","bold":true,"color":"yellow"},{"text":"]: ","bold":true,"color":"white"},{"text":"更换武器时间已过！","color":"red","bold": true}]
execute if score #start_timer_md4 start_timer_md4 matches 410 run scoreboard objectives remove start_timer_md4