team join lobby
tag @s remove menu_inventory
clear @s
execute if score #mode start matches 0 run replaceitem entity @s hotbar.4 lime_wool{Tags:["yes"],display:{Name:'[{"text":"准备","color":"green","italic": false,"bold": true},{"text":"(点击使用)","color":"dark_gray","italic": false,"bold": false}]'}}
teleport @s 184 4 183 0 0
function myduty:lobby/gui/tips