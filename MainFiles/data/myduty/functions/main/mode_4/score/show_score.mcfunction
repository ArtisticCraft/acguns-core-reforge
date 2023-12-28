execute if score #blue score_show matches ..9 unless entity @e[tag=blue_score_10] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["blue_score_10"],CustomName:'{"translate":"space.6"}'}
execute if score #blue score_show matches 10.. if entity @e[tag=blue_score_10] run kill @e[tag=blue_score_10]
###
execute if score #red score_show matches ..9 unless entity @e[tag=red_score_10] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["red_score_10"],CustomName:'{"translate":"space.6"}'}
execute if score #red score_show matches 10.. if entity @e[tag=red_score_10] run kill @e[tag=red_score_10]