#装卸货场
playsound ui.button.click block @a 183 5 201 1 1
scoreboard players set #map map 1
scoreboard players reset #random_map map

data merge block 183 5 201 {Text1:'[{"text":"当前地图","bold":true,"color":"black"},{"text":":","color":"black"}]',Text2:'[{"text":"[","color":"black"},{"text":"装卸货场","bold":true,"color":"aqua"},{"text":"]","color":"black"}]'}

data merge block 182 5 201 {Color:"black",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"italic":false,"color":"black","clickEvent":{"action":"run_command","value":"execute if score #mode start matches 0 run function myduty:lobby/map/map_2"},"text":">>>"}',Text1:'{"text":""}'}
data merge block 184 5 201 {Color:"black",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"italic":false,"color":"black","clickEvent":{"action":"run_command","value":"execute if score #mode start matches 0 run function myduty:lobby/map/map_9"},"text":"<<<"}',Text1:'{"text":""}'}

data merge entity @e[type=item_frame,tag=icon_map,limit=1] {Item:{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:100}}}

execute if entity @e[tag=map_lobby] run kill @e[tag=map_lobby]
execute unless entity @e[tag=map_lobby] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["map_lobby"],CustomName:'{"translate":"装卸货场"}'}