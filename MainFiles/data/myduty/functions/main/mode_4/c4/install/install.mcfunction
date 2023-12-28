function myduty:main/mode_4/c4/stop
tag @s remove c4
tag @s add c4_install
xp add @s 20 levels
clear @s warped_fungus_on_a_stick{Tags:["c4"]}
summon armor_stand ~ ~ ~ {Tags:["c4_install"],ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:10}}],Invisible:false,Marker:true,PortalCooldown:20}
scoreboard players set @e[tag=gametime] gametime_min 0
scoreboard players set @e[tag=gametime] gametime_sec 41

execute as @a at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1
tellraw @a [{"text":"[","bold":true},{"text":"注意","bold":true,"color":"gold"},{"text":"]","bold":true,"color":"white"},{"text":":","bold":true},{"text":" C4炸弹已安装!","color":"red"}]
execute at @s as @e[type=armor_stand,tag=c4_pt,sort=nearest,limit=1] if entity @s[tag=a] run tellraw @a[team=red] [{"text": "C4炸弹","color": "red","bold": true},{"text":"已在","color":"yellow","bold": true},{"text":"A点","bold":true,"color":"white"},{"text":"安装!","color":"yellow","bold": true}]
execute at @s as @e[type=armor_stand,tag=c4_pt,sort=nearest,limit=1] if entity @s[tag=b] run tellraw @a[team=red] [{"text": "C4炸弹","color": "red","bold": true},{"text":"已在","color":"yellow","bold": true},{"text":"B点","bold":true,"color":"white"},{"text":"安装!","color":"yellow","bold": true}]