tag @a[tag=team_chosed] remove team_chosed
team join lobby @a[team=!map_test,tag=ready_yes]
function myduty:lobby/team/random_team/random
tellraw @a [{"text":"[","bold":true},{"text":"随机分队","bold":true,"color":"yellow"},{"text":"]: ","bold":true},{"text":"完成!","color":"green","bold": false},{"text":" (只对已准备的玩家有效)","color":"gray","bold": false}]
tp @s 184 4 183 0 0