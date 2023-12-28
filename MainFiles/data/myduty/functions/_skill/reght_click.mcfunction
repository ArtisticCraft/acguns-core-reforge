execute if entity @s[level=..99] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0
execute if entity @s[level=..99] run tellraw @s [{"text":"[","bold":true},{"text":"提示","bold":true,"color":"yellow"},{"text":"]: ","bold":true,"color":"white"},{"text":"技能正在冷却中...","color": "red","bold":false}]

execute if entity @s[tag=!cd,level=100] if score @s revive_thing_sk matches 50 run function myduty:_skill/skill_1/main
execute if entity @s[tag=!cd,level=100] if score @s revive_thing_sk matches 51 run function myduty:_skill/skill_2/main
execute if entity @s[tag=!cd,level=100] if score @s revive_thing_sk matches 52 run function myduty:_skill/skill_3/main
execute if entity @s[tag=!cd,level=100] if score @s revive_thing_sk matches 53 run function myduty:_skill/skill_4/main
execute if entity @s[tag=!cd,level=100] if score @s revive_thing_sk matches 54 run function myduty:_skill/skill_5/main
execute if entity @s[tag=!cd,level=100] if score @s revive_thing_sk matches 55 run function myduty:_skill/skill_6/main

scoreboard players reset @s reght_click