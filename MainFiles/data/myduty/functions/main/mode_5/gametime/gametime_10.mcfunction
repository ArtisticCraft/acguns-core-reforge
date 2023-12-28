execute if score @s gametime_min matches ..9 unless entity @e[tag=gametime_min_10] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["gametime_min_10"],CustomName:'{"text":"0"}'}
execute if score @s gametime_min matches 10.. if entity @e[tag=gametime_min_10] run kill @e[tag=gametime_min_10]

execute if score @s gametime_sec matches ..9 unless entity @e[tag=gametime_sec_10] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["gametime_sec_10"],CustomName:'{"text":"0"}'}
execute if score @s gametime_sec matches 10.. if entity @e[tag=gametime_sec_10] run kill @e[tag=gametime_sec_10]