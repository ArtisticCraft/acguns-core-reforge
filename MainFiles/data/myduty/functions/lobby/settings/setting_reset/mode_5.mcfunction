playsound ui.button.click block @a 181 5 207 1 1
scoreboard players set #mode_5_score_set mode_5_score_set 30
data merge block 178 7 207 {Text1:'{"text":"目标个人分数","color":"black","bold":true}',Text2:'{"text":"","extra":[{"score":{"name":"#mode_5_score_set","objective":"mode_5_score_set"},"color":"white"}]}'}
scoreboard players set @e[tag=gametime] gametime_set 12
data merge block 178 6 207 {Text1:'{"text":"游戏时间[分]","color":"black","bold":true}',Text2:'{"text":"","extra":[{"score":{"name":"@e[tag=gametime,limit=1]","objective":"gametime_set"},"color":"white"}]}'}
#
time set noon
data merge block 179 5 207 {Text1:'[{"text":"当前时间","bold":true,"color":"black"}]',Text2:'[{"text":"[中午]","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"function myduty:lobby/settings/setting/timeset/night"}}]'}
gamerule doWeatherCycle false
data merge block 178 5 207 {Text1:'[{"text":"自然天气","bold":true,"color":"black"}]',Text2:'[{"text":"[关]","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"function myduty:lobby/settings/setting/doweathercycle/on"}}]'}
scoreboard objectives add damage_taken custom:damage_taken
data merge block 177 5 207 {Text1:'[{"text":"呼吸回血","bold":true,"color":"black"}]',Text2:'[{"text":"[开]","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"function myduty:lobby/settings/setting/naturalregeneration/off"}}]'}