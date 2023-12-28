clear @s red_wool
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0
tag @s remove ready_yes
tag @s remove ready
team join lobby @s
tellraw @s [{"text":"[","bold":true},{"text":"提示","bold":true,"color":"gold"},{"text":"]: ","bold":true,"color":"white"},{"text":"你已取消准备!","color": "red","bold":true}]
replaceitem entity @s hotbar.4 lime_wool{Tags:["yes"],display:{Name:'[{"text":"准备","color":"green","italic": false,"bold": true},{"text":"(背包点击)","color":"dark_gray","italic": false,"bold": false}]'}}