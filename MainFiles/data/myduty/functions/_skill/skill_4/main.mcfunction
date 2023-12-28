tag @s add cd
xp set @s 0 levels
playsound block.stone.break master @s ~ ~ ~ 1 1

effect give @s slowness 1 1 true
execute if entity @s[team=blue] run function myduty:_skill/skill_4/summon/blue
execute if entity @s[team=red] run function myduty:_skill/skill_4/summon/red
scoreboard players set @s cd_time 20
tellraw @s [{"text":"[","bold":true},{"text":"提示","bold":true,"color":"green"},{"text":"]: ","bold":true,"color":"white"},{"text":"已使用技能 ","bold":false},{"text":"感应地雷","bold":true,"color":"red"}]