team join lobby @s
tellraw @a {"text":"","extra":[{"selector": "@s"},{"text":" 加入了 "},{"text":"特别小组","color":"blue","bold": true}]}
tp @s 184 4 190 0 0
team join blue @s
title @s times 10 10 10
title @s title [{"text": "已加入","color": "white"},{"text": " 特别小组","color": "blue","bold": true}]
execute as @s at @s run playsound minecraft:block.note_block.pling master @s 184 4 190 1 2
tag @s add ready