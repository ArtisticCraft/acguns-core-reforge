tag @s add cd
xp set @s 0 levels
playsound levelup master @s ~ ~ ~ 1 2

effect give @s speed 25 0 false
scoreboard players set @s cd_time 500
tellraw @s [{"text":"[","bold":true},{"text":"提示","bold":true,"color":"green"},{"text":"]: ","bold":true,"color":"white"},{"text":"已使用技能 ","bold":false},{"text":"疾步","bold":true,"color":"red"}]