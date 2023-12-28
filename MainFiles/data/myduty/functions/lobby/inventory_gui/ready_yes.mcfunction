clear @s lime_wool
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
tag @s add ready_yes
tellraw @s [{"text":"[","bold":true},{"text":"提示","bold":true,"color":"gold"},{"text":"]: ","bold":true,"color":"white"},{"text":"你已准备!","color": "green","bold":true}]
replaceitem entity @s hotbar.4 red_wool{Tags:["no"],display:{Name:'[{"text":"取消准备","color":"red","italic": false,"bold": true},{"text":"(背包点击)","color":"dark_gray","italic": false,"bold": false}]'}}