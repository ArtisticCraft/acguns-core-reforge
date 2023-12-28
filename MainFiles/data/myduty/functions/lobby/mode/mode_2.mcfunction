#军备竞赛
playsound ui.button.click block @a 186 5 201 1 1
scoreboard players set #mode mode 2

data merge block 186 5 201 {Text1:'[{"text":"选择模式：","bold":true,"color":"black"}]',Text2:'[{"text":"[军备竞赛]","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"execute if score #mode start matches 0 run function myduty:lobby/mode/mode_3"}}]'}

#设置
data merge block 181 6 207 {Text1:'[{"text":"当前设置模式：","bold":true,"color":"black"}]',Text2:'[{"text":"[军备竞赛]","bold":true,"color":"gold"}]'}
data merge block 178 6 207 {Text1:'{"text":"游戏时间[分]","color":"black","bold":true}',Text2:'{"text":"","extra":[{"score":{"name":"@e[tag=gametime,limit=1]","objective":"gametime_set"},"color":"white"}]}'}
data merge block 177 6 207 {Text2:'{"clickEvent":{"action":"run_command","value":"function myduty:lobby/settings/setting/gametime/1"},"extra":[{"bold":true,"color":"green","text":"+"},{"bold":true,"color":"white","text":"1"}],"text":""}'}
data merge block 179 6 207 {Text2:'{"clickEvent":{"action":"run_command","value":"function myduty:lobby/settings/setting/gametime/-1"},"extra":[{"bold":true,"color":"red","text":"-"},{"bold":true,"color":"white","text":"1"}],"text":""}'}

data merge block 178 7 207 {Text1:'{"text":"目标个人分数","color":"black","bold":true}',Text2:'{"text":"20","color":"red"}'}
data merge block 177 7 207 {Text2:{"text":""}}
data merge block 179 7 207 {Text2:{"text":""}}

data merge block 181 5 207 {Text2:'{"clickEvent":{"action":"run_command","value":"function myduty:lobby/settings/setting_reset/mode_2"},"extra":[{"bold":true,"color":"dark_green","text":"[默认设置]"}],"text":""}'}

execute if entity @e[tag=mode_lobby] run kill @e[tag=mode_lobby]
execute unless entity @e[tag=mode_lobby] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["mode_lobby"],CustomName:'{"translate":"军备竞赛"}'}