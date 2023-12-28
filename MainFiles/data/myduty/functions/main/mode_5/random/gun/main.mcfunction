scoreboard players set @s random_max 33
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random"]}
execute store result score @s random run data get entity @e[tag=random,limit=1,sort=nearest] UUID[0]
kill @e[tag=random,limit=1,sort=nearest]
scoreboard players operation @s random %= @s random_max
#主武器
execute if score @s random matches 0 run scoreboard players set @s revive_thing 10
execute if score @s random matches 1 run scoreboard players set @s revive_thing 11
execute if score @s random matches 2 run scoreboard players set @s revive_thing 12
execute if score @s random matches 3 run scoreboard players set @s revive_thing 13
execute if score @s random matches 4 run scoreboard players set @s revive_thing 14
execute if score @s random matches 5 run scoreboard players set @s revive_thing 15
execute if score @s random matches 6 run scoreboard players set @s revive_thing 16
execute if score @s random matches 7 run scoreboard players set @s revive_thing 17
execute if score @s random matches 8 run scoreboard players set @s revive_thing 18
execute if score @s random matches 9 run scoreboard players set @s revive_thing 19
execute if score @s random matches 10 run scoreboard players set @s revive_thing 101
execute if score @s random matches 11 run scoreboard players set @s revive_thing 102
execute if score @s random matches 12 run scoreboard players set @s revive_thing 103
execute if score @s random matches 13 run scoreboard players set @s revive_thing 104
execute if score @s random matches 14 run scoreboard players set @s revive_thing 105
execute if score @s random matches 15 run scoreboard players set @s revive_thing 106
execute if score @s random matches 16 run scoreboard players set @s revive_thing 107
#副武器
execute if score @s random matches 17 run scoreboard players set @s revive_thing_fwq 20
execute if score @s random matches 18 run scoreboard players set @s revive_thing_fwq 21
execute if score @s random matches 19 run scoreboard players set @s revive_thing_fwq 22
execute if score @s random matches 20 run scoreboard players set @s revive_thing_fwq 23
#轻型武器
execute if score @s random matches 21 run scoreboard players set @s revive_thing 30
execute if score @s random matches 22 run scoreboard players set @s revive_thing 31
execute if score @s random matches 23 run scoreboard players set @s revive_thing 32
execute if score @s random matches 24 run scoreboard players set @s revive_thing 33
execute if score @s random matches 25 run scoreboard players set @s revive_thing 34
execute if score @s random matches 26 run scoreboard players set @s revive_thing 35
execute if score @s random matches 27 run scoreboard players set @s revive_thing 36
execute if score @s random matches 28 run scoreboard players set @s revive_thing 37
#霰弹枪
execute if score @s random matches 29 run scoreboard players set @s revive_thing 40
execute if score @s random matches 30 run scoreboard players set @s revive_thing 41
execute if score @s random matches 31 run scoreboard players set @s revive_thing 42
execute if score @s random matches 32 run scoreboard players set @s revive_thing 43
scoreboard players reset @s random
scoreboard players reset @s random_max