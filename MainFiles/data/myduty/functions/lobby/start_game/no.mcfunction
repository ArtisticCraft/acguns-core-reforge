execute as @a at @s run playsound minecraft:block.note_block.bass block @s ~ ~ ~ 1 1
title @a times 10 20 10
title @a title [{"text": "游玩人数不足","color": "red"}]
execute if entity @a[tag=!ready_yes] run tellraw @a [{"text": "","extra": [{"text":"[","bold":true},{"text":"提示","bold":true,"color":"gold"},{"text":"]: ","bold":true,"color":"white"},{"text":"玩家","color": "red","bold":true},{"selector": "@a[tag=!ready_yes]"},{"text":"未准备!","color": "red","bold":true}]}]
title @a[tag=!ready_yes] subtitle {"text": "背包点击绿色羊毛准备","bold": true,"color": "aqua"}