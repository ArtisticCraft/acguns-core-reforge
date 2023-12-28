scoreboard players add @s skill_time 1
execute if score @s skill_time matches 17 run xp add @s 1 levels
execute if score @s skill_time matches 17.. run scoreboard players reset @s skill_time
execute if entity @s[level=100] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1
execute if entity @s[level=100] run tellraw @s [{"text":"[","bold":true},{"text":"提示","bold":true,"color":"green"},{"text":"]: ","bold":true,"color":"white"},{"text":"技能 ","color": "green","bold":false},{"text":"感应地雷","color": "red","bold":true},{"text":" 已准备就绪!","color": "green","bold":false}]