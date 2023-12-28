tag @s add cd
xp set @s 0 levels
playsound item.armor.equip_leather master @s ~ ~ ~ 1 1

effect give @s slowness 3 1 true
function myduty:main/gui/revive_thing
replaceitem entity @s hotbar.3 tac:light_grenade{Tags:["kill"]}
scoreboard players set @s cd_time 60
tellraw @s [{"text":"[","bold":true},{"text":"提示","bold":true,"color":"green"},{"text":"]: ","bold":true,"color":"white"},{"text":"已使用技能 ","bold":false},{"text":"弹药补充","bold":true,"color":"red"}]