tag @s add team_chosed
#tellraw @a {"text":"","extra":[{"selector": "@s"},{"text":" 加入了 "},{"text":"战术核心","color":"red","bold": true}]}
team join red @s
#tp @s 184.49 4.00 190.58 0 0
execute as @s at @s run playsound block.note_block.pling master @s 184.49 4.00 190.58 1 2
tag @s add ready