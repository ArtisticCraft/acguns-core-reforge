scoreboard players add @s boom_time 1
execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=26..40}] as @s[type=armor_stand,tag=c4_install,scores={boom_time=20..}] at @s run execute as @a at @s run playsound c4_installing master @s ~ ~ ~ 50 1
execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=26..40}] as @s[type=armor_stand,tag=c4_install,scores={boom_time=20..}] at @s run scoreboard players reset @s boom_time

execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=18..25}] as @s[type=armor_stand,tag=c4_install,scores={boom_time=15..}] at @s run execute as @a at @s run playsound c4_installing master @s ~ ~ ~ 50 1
execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=18..25}] as @s[type=armor_stand,tag=c4_install,scores={boom_time=15..}] at @s run scoreboard players reset @s boom_time

execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=11..17}] as @s[type=armor_stand,tag=c4_install,scores={boom_time=10..}] at @s run execute as @a at @s run playsound c4_installing master @s ~ ~ ~ 50 1
execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=11..17}] as @s[type=armor_stand,tag=c4_install,scores={boom_time=10..}] at @s run scoreboard players reset @s boom_time

execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=5..10}] as @s[type=armor_stand,tag=c4_install,scores={boom_time=5..}] at @s run execute as @a at @s run playsound c4_installing master @s ~ ~ ~ 50 1
execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=5..10}] as @s[type=armor_stand,tag=c4_install,scores={boom_time=5..}] at @s run scoreboard players reset @s boom_time

execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=3..4}] as @s[type=armor_stand,tag=c4_install,scores={boom_time=4..}] at @s run execute as @a at @s run playsound c4_installing master @s ~ ~ ~ 50 1
execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=3..4}] as @s[type=armor_stand,tag=c4_install,scores={boom_time=4..}] at @s run scoreboard players reset @s boom_time

execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=1..2}] as @s[type=armor_stand,tag=c4_install,scores={boom_time=2..}] at @s run execute as @a at @s run playsound c4_installing master @s ~ ~ ~ 50 1
execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=1..2}] as @s[type=armor_stand,tag=c4_install,scores={boom_time=2..}] at @s run scoreboard players reset @s boom_time

execute if entity @e[tag=gametime,scores={gametime_min=..0,gametime_sec=..0}] if entity @e[type=armor_stand,tag=c4_install] if score #mode_4 start matches 0 run function myduty:main/mode_4/c4/boom