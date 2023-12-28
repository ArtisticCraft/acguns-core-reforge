tag @s add team_chosed
#tellraw @a {"text":"","extra":[{"selector": "@s"},{"text":" 加入了 "},{"text":"特别小组","color":"blue","bold": true}]}
team join blue @s
#tp @s 184.49 4.00 190.58 0 0
execute as @s at @s run playsound block.note_block.pling master @s 184.49 4.00 190.58 1 2
tag @s add ready