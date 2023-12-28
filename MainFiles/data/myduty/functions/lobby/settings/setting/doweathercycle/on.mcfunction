playsound ui.button.click block @a 178 5 207 1 1
gamerule doWeatherCycle true
data merge block 178 5 207 {Text1:'[{"text":"自然天气","bold":true,"color":"black"}]',Text2:'[{"text":"[开]","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"function myduty:lobby/settings/setting/doweathercycle/off"}}]'}