playsound ui.button.click block @a 177 7 207 1 1
scoreboard players add #mode_1_score_set mode_1_score_set 10
execute if score #mode_1_score_set mode_1_score_set matches 210.. run scoreboard players remove #mode_1_score_set mode_1_score_set 10
data merge block 178 7 207 {Text1:'{"text":"目标分数","color":"black","bold":true}',Text2:'{"text":"","extra":[{"score":{"name":"#mode_1_score_set","objective":"mode_1_score_set"},"color":"white"}]}'}