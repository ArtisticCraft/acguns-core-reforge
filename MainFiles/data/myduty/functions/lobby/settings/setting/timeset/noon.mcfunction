playsound ui.button.click block @a 179 5 207 1 1
time set noon
data merge block 179 5 207 {Text1:'[{"text":"当前时间","bold":true,"color":"black"}]',Text2:'[{"text":"[中午]","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"function myduty:lobby/settings/setting/timeset/night"}}]'}