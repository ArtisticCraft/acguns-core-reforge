execute if score #blue_player surviving_player matches 1.. unless entity @e[tag=blue_player_1] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["blue_player_1"],CustomName:'{"text":"六","font": "minecraft:hud"}'}
execute if score #blue_player surviving_player matches ..0 if entity @e[tag=blue_player_1] run kill @e[tag=blue_player_1]
execute unless entity @e[tag=blue_player_1] unless entity @e[tag=blue_player_10] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["blue_player_10"],CustomName:'{"translate":"space.11"}'}
execute if entity @e[tag=blue_player_1] if entity @e[tag=blue_player_10] run kill @e[tag=blue_player_10]
execute if score #blue_player surviving_player matches 2.. unless entity @e[tag=blue_player_2] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["blue_player_2"],CustomName:'{"text":"六","font": "minecraft:hud"}'}
execute if score #blue_player surviving_player matches ..1 if entity @e[tag=blue_player_2] run kill @e[tag=blue_player_2]
execute unless entity @e[tag=blue_player_2] unless entity @e[tag=blue_player_20] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["blue_player_20"],CustomName:'{"translate":"space.11"}'}
execute if entity @e[tag=blue_player_2] if entity @e[tag=blue_player_20] run kill @e[tag=blue_player_20]
execute if score #blue_player surviving_player matches 3.. unless entity @e[tag=blue_player_3] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["blue_player_3"],CustomName:'{"text":"六","font": "minecraft:hud"}'}
execute if score #blue_player surviving_player matches ..2 if entity @e[tag=blue_player_3] run kill @e[tag=blue_player_3]
execute unless entity @e[tag=blue_player_3] unless entity @e[tag=blue_player_30] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["blue_player_30"],CustomName:'{"translate":"space.11"}'}
execute if entity @e[tag=blue_player_3] if entity @e[tag=blue_player_30] run kill @e[tag=blue_player_30]
execute if score #blue_player surviving_player matches 4.. unless entity @e[tag=blue_player_4] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["blue_player_4"],CustomName:'{"text":"六","font": "minecraft:hud"}'}
execute if score #blue_player surviving_player matches ..3 if entity @e[tag=blue_player_4] run kill @e[tag=blue_player_4]
execute unless entity @e[tag=blue_player_4] unless entity @e[tag=blue_player_40] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["blue_player_40"],CustomName:'{"translate":"space.11"}'}
execute if entity @e[tag=blue_player_4] if entity @e[tag=blue_player_40] run kill @e[tag=blue_player_40]
execute if score #blue_player surviving_player matches 5.. unless entity @e[tag=blue_player_5] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["blue_player_5"],CustomName:'{"text":"六","font": "minecraft:hud"}'}
execute if score #blue_player surviving_player matches ..4 if entity @e[tag=blue_player_5] run kill @e[tag=blue_player_5]
execute unless entity @e[tag=blue_player_5] unless entity @e[tag=blue_player_50] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["blue_player_50"],CustomName:'{"translate":"space.11"}'}
execute if entity @e[tag=blue_player_5] if entity @e[tag=blue_player_50] run kill @e[tag=blue_player_50]
execute if score #blue_player surviving_player matches 6.. unless entity @e[tag=blue_player_6] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["blue_player_6"],CustomName:'{"text":"七","font": "minecraft:hud"}'}
execute if score #blue_player surviving_player matches ..5 if entity @e[tag=blue_player_6] run kill @e[tag=blue_player_6]
execute unless entity @e[tag=blue_player_6] unless entity @e[tag=blue_player_60] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["blue_player_60"],CustomName:'{"translate":"space.11"}'}
execute if entity @e[tag=blue_player_6] if entity @e[tag=blue_player_60] run kill @e[tag=blue_player_60]
execute if score #red_player surviving_player matches 1.. unless entity @e[tag=red_player_1] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["red_player_1"],CustomName:'{"text":"五","font": "minecraft:hud"}'}
execute if score #red_player surviving_player matches ..0 if entity @e[tag=red_player_1] run kill @e[tag=red_player_1]
execute unless entity @e[tag=red_player_1] unless entity @e[tag=red_player_10] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["red_player_10"],CustomName:'{"translate":"space.11"}'}
execute if entity @e[tag=red_player_1] if entity @e[tag=red_player_10] run kill @e[tag=red_player_10]
execute if score #red_player surviving_player matches 2.. unless entity @e[tag=red_player_2] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["red_player_2"],CustomName:'{"text":"五","font": "minecraft:hud"}'}
execute if score #red_player surviving_player matches ..1 if entity @e[tag=red_player_2] run kill @e[tag=red_player_2]
execute unless entity @e[tag=red_player_2] unless entity @e[tag=red_player_20] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["red_player_20"],CustomName:'{"translate":"space.11"}'}
execute if entity @e[tag=red_player_2] if entity @e[tag=red_player_20] run kill @e[tag=red_player_20]
execute if score #red_player surviving_player matches 3.. unless entity @e[tag=red_player_3] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["red_player_3"],CustomName:'{"text":"五","font": "minecraft:hud"}'}
execute if score #red_player surviving_player matches ..2 if entity @e[tag=red_player_3] run kill @e[tag=red_player_3]
execute unless entity @e[tag=red_player_3] unless entity @e[tag=red_player_30] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["red_player_30"],CustomName:'{"translate":"space.11"}'}
execute if entity @e[tag=red_player_3] if entity @e[tag=red_player_30] run kill @e[tag=red_player_30]
execute if score #red_player surviving_player matches 4.. unless entity @e[tag=red_player_4] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["red_player_4"],CustomName:'{"text":"五","font": "minecraft:hud"}'}
execute if score #red_player surviving_player matches ..3 if entity @e[tag=red_player_4] run kill @e[tag=red_player_4]
execute unless entity @e[tag=red_player_4] unless entity @e[tag=red_player_40] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["red_player_40"],CustomName:'{"translate":"space.11"}'}
execute if entity @e[tag=red_player_4] if entity @e[tag=red_player_40] run kill @e[tag=red_player_40]
execute if score #red_player surviving_player matches 5.. unless entity @e[tag=red_player_5] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["red_player_5"],CustomName:'{"text":"五","font": "minecraft:hud"}'}
execute if score #red_player surviving_player matches ..4 if entity @e[tag=red_player_5] run kill @e[tag=red_player_5]
execute unless entity @e[tag=red_player_5] unless entity @e[tag=red_player_50] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["red_player_50"],CustomName:'{"translate":"space.11"}'}
execute if entity @e[tag=red_player_5] if entity @e[tag=red_player_50] run kill @e[tag=red_player_50]
execute if score #red_player surviving_player matches 6.. unless entity @e[tag=red_player_6] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["red_player_6"],CustomName:'{"text":"七","font": "minecraft:hud"}'}
execute if score #red_player surviving_player matches ..5 if entity @e[tag=red_player_6] run kill @e[tag=red_player_6]
execute unless entity @e[tag=red_player_6] unless entity @e[tag=red_player_60] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["red_player_60"],CustomName:'{"translate":"space.11"}'}
execute if entity @e[tag=red_player_6] if entity @e[tag=red_player_60] run kill @e[tag=red_player_60]