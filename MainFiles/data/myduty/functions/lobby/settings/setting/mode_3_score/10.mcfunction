playsound ui.button.click block @a 177 7 207 1 1
scoreboard players add #mode_3_score_set mode_3_score_set 50
execute if score #mode_3_score_set mode_3_score_set matches 850 run scoreboard players remove #mode_3_score_set mode_3_score_set 50
data merge block 178 7 207 {Text1:'{"text":"到达分数","color":"black","bold":true}',Text2:'{"text":"","extra":[{"score":{"name":"#mode_3_score_set","objective":"mode_3_score_set"},"color":"white"}]}'}