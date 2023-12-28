playsound ui.button.click block @a 177 7 207 1 1
scoreboard players add #mode_5_score_set mode_5_score_set 10
execute if score #mode_5_score_set mode_5_score_set matches 100.. run scoreboard players remove #mode_5_score_set mode_5_score_set 10
data merge block 178 7 207 {Text1:'{"text":"目标个人分数","color":"black","bold":true}',Text2:'{"text":"","extra":[{"score":{"name":"#mode_5_score_set","objective":"mode_5_score_set"},"color":"white"}]}'}