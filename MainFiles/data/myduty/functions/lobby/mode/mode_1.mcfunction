#团队竞技
playsound ui.button.click block @a 186 5 201 1 1
scoreboard players set #mode mode 1

data merge block 186 5 201 {Text1:'[{"text":"选择模式：","bold":true,"color":"black"}]',Text2:'[{"text":"[团队竞技]","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"execute if score #mode start matches 0 run function myduty:lobby/mode/mode_2"}}]'}

#设置
data merge block 181 6 207 {Text1:'[{"text":"当前设置模式：","bold":true,"color":"black"}]',Text2:'[{"text":"[团队竞技]","bold":true,"color":"gold"}]'}
data merge block 178 6 207 {Text1:'{"text":"游戏时间[分]","color":"black","bold":true}',Text2:'{"text":"","extra":[{"score":{"name":"@e[tag=gametime,limit=1]","objective":"gametime_set"},"color":"white"}]}'}
data merge block 177 6 207 {Text2:'{"clickEvent":{"action":"run_command","value":"function myduty:lobby/settings/setting/gametime/1"},"extra":[{"bold":true,"color":"green","text":"+"},{"bold":true,"color":"white","text":"1"}],"text":""}'}
data merge block 179 6 207 {Text2:'{"clickEvent":{"action":"run_command","value":"function myduty:lobby/settings/setting/gametime/-1"},"extra":[{"bold":true,"color":"red","text":"-"},{"bold":true,"color":"white","text":"1"}],"text":""}'}

data merge block 178 7 207 {Text1:'{"text":"目标分数","color":"black","bold":true}',Text2:'{"text":"","extra":[{"score":{"name":"#mode_1_score_set","objective":"mode_1_score_set"},"color":"white"}]}'}
data merge block 177 7 207 {Text2:'{"clickEvent":{"action":"run_command","value":"function myduty:lobby/settings/setting/mode_1_score/10"},"extra":[{"bold":true,"color":"green","text":"+"},{"bold":true,"color":"white","text":"10"}],"text":""}'}
data merge block 179 7 207 {Text2:'{"clickEvent":{"action":"run_command","value":"function myduty:lobby/settings/setting/mode_1_score/-10"},"extra":[{"bold":true,"color":"red","text":"-"},{"bold":true,"color":"white","text":"10"}],"text":""}'}

data merge block 181 5 207 {Text2:'{"clickEvent":{"action":"run_command","value":"function myduty:lobby/settings/setting_reset/mode_1"},"extra":[{"bold":true,"color":"dark_green","text":"[默认设置]"}],"text":""}'}
#
scoreboard players set #map map 1
scoreboard players reset #random_map map

data merge block 183 5 201 {Text1:'[{"text":"当前地图","bold":true,"color":"black"},{"text":":","color":"black"}]',Text2:'[{"text":"[","color":"black"},{"text":"装卸货场","bold":true,"color":"aqua"},{"text":"]","color":"black"}]'}

data merge block 182 5 201 {Color:"black",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"italic":false,"color":"black","clickEvent":{"action":"run_command","value":"execute if score #mode start matches 0 run function myduty:lobby/map/map_2"},"text":">>>"}',Text1:'{"text":""}'}
data merge block 184 5 201 {Color:"black",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"italic":false,"color":"black","clickEvent":{"action":"run_command","value":"execute if score #mode start matches 0 run function myduty:lobby/map/map_9"},"text":"<<<"}',Text1:'{"text":""}'}

data merge entity @e[type=item_frame,tag=icon_map,limit=1] {Item:{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:100}}}

execute if entity @e[tag=map_lobby] run kill @e[tag=map_lobby]
execute unless entity @e[tag=map_lobby] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["map_lobby"],CustomName:'{"translate":"装卸货场"}'}

execute if entity @e[tag=mode_lobby] run kill @e[tag=mode_lobby]
execute unless entity @e[tag=mode_lobby] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["mode_lobby"],CustomName:'{"translate":"团队竞技"}'}
#
data merge block 183 4 201 {Text2:'[{"text":"[随机地图]","bold":true,"color":"black","clickEvent":{"action":"run_command","value":"execute if score #mode start matches 0 run function myduty:lobby/map/map_random"}}]'}