playsound ui.button.click block @a 179 6 207 1 1
scoreboard players remove @e[tag=gametime] gametime_set 1
execute if entity @e[tag=gametime,scores={gametime_set=0}] run scoreboard players add @e[tag=gametime] gametime_set 1
data merge block 178 6 207 {Text1:'{"text":"游戏时间[分]","color":"black","bold":true}',Text2:'{"text":"","extra":[{"score":{"name":"@e[tag=gametime,limit=1]","objective":"gametime_set"},"color":"white"}]}'}