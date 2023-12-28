tag @s remove c4
clear @s warped_fungus_on_a_stick{Tags:["c4"]}
summon armor_stand ~ ~ ~ {Tags:["c4"],ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:10}}],Invisible:false,Marker:true,PortalCooldown:35}
execute as @a[team=red] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0
tellraw @a[team=red] [{"text":"[","bold":true},{"text":"注意","bold":true,"color":"yellow"},{"text":"]:","bold":true},{"text":" C4炸弹已掉落!","color":"red"}]
scoreboard players reset @s reght_click_c4