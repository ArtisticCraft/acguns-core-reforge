execute at @s as @e[type=armor_stand,tag=c4_pt,sort=nearest,limit=1] if entity @s[tag=a] run tellraw @a[team=blue] [{"text":"[","bold":true},{"text":"提示","bold":true,"color":"green"},{"text":"]: ","bold":true,"color":"white"},{"text":"已在","color":"yellow","bold": true},{"text":"A点","bold":true,"color":"white"},{"text":"发现","color":"yellow","bold": true},{"text": "C4炸弹","color": "red","bold": true},{"text":"!","color":"yellow","bold": true}]
execute at @s as @e[type=armor_stand,tag=c4_pt,sort=nearest,limit=1] if entity @s[tag=b] run tellraw @a[team=blue] [{"text":"[","bold":true},{"text":"提示","bold":true,"color":"green"},{"text":"]: ","bold":true,"color":"white"},{"text":"已在","color":"yellow","bold": true},{"text":"B点","bold":true,"color":"white"},{"text":"发现","color":"yellow","bold": true},{"text": "C4炸弹","color": "red","bold": true},{"text":"!","color":"yellow","bold": true}]
tag @s add c4_find