scoreboard players set @s[team=!map_test] team_fight_menu 6
execute at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
function myduty:main/gui/gui_ui

tellraw @s[team=map_test] [{"text":"[","bold":true},{"text":"注意","bold":true,"color":"green"},{"text":"]: ","bold":true,"color":"white"},{"text":"靶场禁止使用技能!","color": "red","bold":false}]