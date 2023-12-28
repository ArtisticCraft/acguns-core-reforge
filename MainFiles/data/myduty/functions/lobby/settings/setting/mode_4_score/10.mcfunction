playsound ui.button.click block @a 177 7 207 1 1
scoreboard players add #mode_4_score_set mode_4_score_set 8
execute if score #mode_4_score_set mode_4_score_set matches 17.. run scoreboard players set #mode_4_score_set mode_4_score_set 16
data merge block 178 7 207 {Text1:'{"text":"回合数","color":"black","bold":true}',Text2:'{"text":"","extra":[{"score":{"name":"#mode_4_score_set","objective":"mode_4_score_set"},"color":"white"}]}'}