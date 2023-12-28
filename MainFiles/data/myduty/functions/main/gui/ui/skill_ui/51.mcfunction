execute if score @s revive_thing_sk matches 51 run tellraw @s [{"text":"[","bold":true},{"text":"注意","bold":true,"color":"yellow"},{"text":"]: ","bold":true,"color":"white"},{"text":"你已经选择了当前技能!","color": "red","bold":false}]
execute unless score @s revive_thing_sk matches 51 run xp set @s 0 levels

scoreboard players set @s team_fight_skill 51
scoreboard players reset @s skill_time
execute at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
function myduty:main/gui/gui_ui