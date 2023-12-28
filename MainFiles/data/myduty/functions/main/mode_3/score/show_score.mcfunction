execute if score #ct_score ct_score_show matches ..9 unless entity @e[tag=ct_score_10] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["ct_score_10"],CustomName:'{"translate":"space.6"}'}
execute if score #ct_score ct_score_show matches 10.. if entity @e[tag=ct_score_10] run kill @e[tag=ct_score_10]
execute if score #ct_score ct_score_show matches ..99 unless entity @e[tag=ct_score_100] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["ct_score_100"],CustomName:'{"translate":"space.6"}'}
execute if score #ct_score ct_score_show matches 100.. if entity @e[tag=ct_score_100] run kill @e[tag=ct_score_100]

execute if score #t_score t_score_show matches ..9 unless entity @e[tag=t_score_10] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["t_score_10"],CustomName:'{"translate":"space.6"}'}
execute if score #t_score t_score_show matches 10.. if entity @e[tag=t_score_10] run kill @e[tag=t_score_10]
execute if score #t_score t_score_show matches ..99 unless entity @e[tag=t_score_100] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["t_score_100"],CustomName:'{"translate":"space.6"}'}
execute if score #t_score t_score_show matches 100.. if entity @e[tag=t_score_100] run kill @e[tag=t_score_100]