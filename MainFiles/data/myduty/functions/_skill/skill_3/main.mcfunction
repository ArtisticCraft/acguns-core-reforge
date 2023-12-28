tag @s add cd
xp set @s 0 levels

effect give @s slowness 1 1 true
function myduty:main/health/healing/healing
scoreboard players set @s cd_time 20
tellraw @s [{"text":"[","bold":true},{"text":"提示","bold":true,"color":"green"},{"text":"]: ","bold":true,"color":"white"},{"text":"已使用技能 ","bold":false},{"text":"紧急复苏","bold":true,"color":"red"}]