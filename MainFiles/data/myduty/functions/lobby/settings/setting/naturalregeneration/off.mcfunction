playsound ui.button.click block @a 177 5 207 1 1
scoreboard objectives remove damage_taken
data merge block 177 5 207 {Text1:'[{"text":"呼吸回血","bold":true,"color":"black"}]',Text2:'[{"text":"[关]","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"function myduty:lobby/settings/setting/naturalregeneration/on"}}]'}