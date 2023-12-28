scoreboard players remove @e[tag=gametime,scores={gametime_min=0..,gametime_sec=0..}] gametime_sec 1
execute if entity @e[tag=gametime,scores={gametime_min=1..,gametime_sec=..-1}] run function myduty:main/mode_5/gametime/min_decrese
execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=..-1}] run scoreboard players set @e[tag=gametime,scores={gametime_sec=..-1}] gametime_sec 0

execute as @e[tag=gametime] at @s run function myduty:main/mode_5/gametime/gametime_10

bossbar set minecraft:gametime name {"text":"","extra":[{"selector": "@e[tag=gametime_min_10,limit=1]","bold":true},{"score":{"name":"@e[tag=gametime,limit=1]","objective":"gametime_min"},"bold":true},{"text":":","bold":true},{"selector": "@e[tag=gametime_sec_10,limit=1]","bold":true},{"score": {"objective":"gametime_sec","name": "@e[tag=gametime,limit=1]"},"bold": true},{"selector": "@e[tag=gametime_sec_0,limit=1]"}]}
execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=..10}] run bossbar set minecraft:gametime name {"text":"","extra":[{"selector": "@e[tag=gametime_min_10,limit=1]","bold":true,"color": "red"},{"score":{"name":"@e[tag=gametime,limit=1]","objective":"gametime_min"},"bold":true,"color": "red"},{"text":":","bold":true,"color": "red"},{"selector": "@e[tag=gametime_sec_10,limit=1]","bold":true,"color": "red"},{"score": {"objective":"gametime_sec","name": "@e[tag=gametime,limit=1]"},"bold": true,"color": "red"},{"selector": "@e[tag=gametime_sec_0,limit=1]","color": "red"}]}

execute if entity @e[tag=gametime,scores={gametime_min=0..,gametime_sec=0..}] run schedule function myduty:main/mode_5/gametime/gametime 1s

execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=..0}] if score @a[tag=mvp_5,limit=1] score matches 1.. run function myduty:main/mode_5/gametime/win

execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=10}] if score @a[tag=mvp_5,limit=1] score matches 1.. run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=9}] if score @a[tag=mvp_5,limit=1] score matches 1.. run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=8}] if score @a[tag=mvp_5,limit=1] score matches 1.. run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=7}] if score @a[tag=mvp_5,limit=1] score matches 1.. run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=6}] if score @a[tag=mvp_5,limit=1] score matches 1.. run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=5}] if score @a[tag=mvp_5,limit=1] score matches 1.. run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 2
execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=4}] if score @a[tag=mvp_5,limit=1] score matches 1.. run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 2
execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=3}] if score @a[tag=mvp_5,limit=1] score matches 1.. run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 2
execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=2}] if score @a[tag=mvp_5,limit=1] score matches 1.. run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 2
execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=1}] if score @a[tag=mvp_5,limit=1] score matches 1.. run execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 2