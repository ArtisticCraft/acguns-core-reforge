team join lobby @s
tellraw @a {"text":"","extra":[{"selector": "@s"},{"text":" 加入了 "},{"text":"战术核心","color":"red","bold": true}]}
tp @s 184 4 190 0 0
team join red @s
title @s times 10 10 10
title @s title [{"text": "已加入","color": "white"},{"text": " 战术核心","color": "red","bold": true}]
execute as @s at @s run playsound minecraft:block.note_block.pling master @s 184 4 190 1 2
tag @s add ready