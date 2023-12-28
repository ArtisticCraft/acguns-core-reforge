execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=..0}] run summon area_effect_cloud 180 4 180 {Duration:300000000,Tags:["gametime_sec_0"],CustomName:'{"text":"0","bold":true}'}
scoreboard objectives remove gametime_sec

execute if score #blue score > #red score run function myduty:main/mode_1/gametime/win_red
execute if score #blue score < #red score run function myduty:main/mode_1/gametime/win_blue
execute if score #blue score = #red score run function myduty:main/mode_1/gametime/win