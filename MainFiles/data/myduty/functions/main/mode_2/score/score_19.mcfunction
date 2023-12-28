tag @s[tag=!score_19] remove menu_inventory_mode2
effect give @s[tag=!score_19] minecraft:glowing 999999 0 true
execute if entity @s[tag=!score_19] as @a at @s run playsound entity.ender_dragon.growl block @s ~ ~ ~ 1 1
execute if entity @s[tag=!score_19] run title @a reset
execute if entity @s[tag=!score_19] run title @a title {"text":"干他！","color":"red"}
execute if entity @s[tag=!score_19] run title @a subtitle {"text": "","extra":[{"selector": "@a[tag=!score_19,scores={kda_k=19},limit=1]"},{"text":" 拿到了 "},{"text":"胜利匕首","bold":true,"color":"light_purple"}]}
execute if entity @s[tag=!score_19] run tellraw @a {"text": "","extra":[{"text":"[","bold":true},{"text":"注意","bold":true,"color":"yellow"},{"text":"]:","bold":true},{"selector": "@a[tag=!score_19,scores={kda_k=19},limit=1]"},{"text":" 拿到了 "},{"text":"胜利匕首 ","bold":true,"color":"light_purple"},{"text":"干他！","color":"red","bold": true}]}
tag @s add score_19