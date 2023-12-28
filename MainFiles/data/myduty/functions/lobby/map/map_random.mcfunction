#社区
playsound ui.button.click block @a 183 5 201 1 1
scoreboard players set #random_map map 1

data merge block 183 5 201 {Text1:'[{"text":"当前地图","bold":true,"color":"black"},{"text":":","color":"black"}]',Text2:'[{"text":"[","color":"black"},{"text":"随机","bold":true,"color":"aqua"},{"text":"]","color":"black"}]'}

data merge entity @e[type=item_frame,tag=icon_map,limit=1] {Item:{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:109}}}

execute if entity @e[tag=map_lobby] run kill @e[tag=map_lobby]
execute unless entity @e[tag=map_lobby] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["map_lobby"],CustomName:'[{"text":"a","obfuscated":true},{"text":"随机","obfuscated":false},{"text":"a","obfuscated":true}]'}