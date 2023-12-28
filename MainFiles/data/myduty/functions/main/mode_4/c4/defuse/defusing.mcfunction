execute if entity @s[x_rotation=60..90] run scoreboard players add @s c4_interact 1
execute if entity @s[x_rotation=60..90] run title @s times 0 5 0
execute if entity @s[x_rotation=60..90] run title @s title {"text":""}
execute if entity @s[x_rotation=60..90] run title @s subtitle {"text": "","extra":[{"text": "C4炸弹拆除中","color": "red","bold": true},{"score": {"name":"@s","objective": "c4_interact"},"color":"white","bold":true},{"text":"%","color":"white","bold":true}]}
execute if entity @s[x_rotation=60..90] run effect give @s slowness 1 10 true
execute if entity @s[x_rotation=60..90] run effect give @s jump_boost 1 250 true

execute unless entity @s[x_rotation=60..90] run function myduty:main/mode_4/c4/stop

execute if entity @s[scores={c4_interact=1}] at @s run playsound c4_defusing master @a ~ ~ ~ 1 1
execute if entity @s[scores={c4_interact=100..}] at @s run function myduty:main/mode_4/c4/defuse/defuse