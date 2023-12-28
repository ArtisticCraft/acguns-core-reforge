execute as @a[gamemode=adventure,tag=!gameover,distance=..5] at @s run playsound ui.button.click block @s ~ ~ ~ 0.15 2
execute store result score @s ct_score_limit_b if entity @a[distance=..5]
execute if score @s ct_score_limit_b matches 1 run scoreboard players add @s ct_score_timer_b 10
execute if score @s ct_score_limit_b matches 2 run scoreboard players add @s ct_score_timer_b 12
execute if score @s ct_score_limit_b matches 3 run scoreboard players add @s ct_score_timer_b 14
execute if score @s ct_score_limit_b matches 4 run scoreboard players add @s ct_score_timer_b 16
execute if score @s ct_score_limit_b matches 5.. run scoreboard players add @s ct_score_timer_b 18
bossbar add score_timer_b {"text": ""}
bossbar set score_timer_b max 2200
bossbar set score_timer_b color blue
bossbar set score_timer_b name {"text":"","extra":[{"text":"特别小组 ","bold":true,"color":"blue"},{"text":"正在占领"},{"selector": "@e[tag=BB,limit=1]"},{"text":"点..."}]}
bossbar set score_timer_b players @a
execute store result bossbar score_timer_b value run scoreboard players get @s ct_score_timer_b

execute if score @s ct_score_timer_b matches 2200.. run bossbar set score_timer_b players @s
execute if score @s ct_score_timer_b matches 2200.. run tag @a[team=blue] add over_b
execute if score @s ct_score_timer_b matches 2200.. run tag @a[team=red] remove over_b
execute if score @s ct_score_timer_b matches 2200.. run replaceitem entity @s armor.head slime_ball{CustomModelData:2}
execute if score @s ct_score_timer_b matches 2200.. run tag @s add ct
execute if score @s ct_score_timer_b matches 2200.. if score #flag_score ct_flag_score matches 0 run scoreboard players add #ct_score ct_score_show 1
execute if score @s ct_score_timer_b matches 2200.. if score #flag_score ct_flag_score matches 0 run scoreboard players remove #ct_score ct_score 1
execute if score @s ct_score_timer_b matches 2200.. if score #flag_score ct_flag_score matches 1 run scoreboard players add #ct_score ct_score_show 2
execute if score @s ct_score_timer_b matches 2200.. if score #flag_score ct_flag_score matches 1 run scoreboard players remove #ct_score ct_score 2
execute if score @s ct_score_timer_b matches 2200.. if score #flag_score ct_flag_score matches 2 run scoreboard players add #ct_score ct_score_show 3
execute if score @s ct_score_timer_b matches 2200.. if score #flag_score ct_flag_score matches 2 run scoreboard players remove #ct_score ct_score 3
execute if score @s ct_score_timer_b matches 2200.. run scoreboard players add #flag_score ct_flag_score 1
execute if score @s[tag=t] ct_score_timer_b matches 2200.. run scoreboard players remove #flag_score t_flag_score 1
execute if score @s[tag=t] ct_score_timer_b matches 2200.. run tag @s remove t
execute if score @s ct_score_timer_b matches 2200.. run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2
execute if score @s ct_score_timer_b matches 2200.. run tellraw @a {"text":"","extra":[{"text":"[","bold":true},{"text":"注意","bold":true,"color":"gold"},{"text":"]: ","bold":true},{"text":"特别小组","bold":true,"color":"blue"},{"text":" 占领了"},{"selector": "@e[tag=BB,limit=1]"},{"text":"点!","color":"white"}]}
execute if score @s ct_score_timer_b matches 2200.. run kill @e[type=area_effect_cloud,tag=BB]
execute if score @s ct_score_timer_b matches 2200.. run summon area_effect_cloud ~ ~ ~ {Duration:300000000,Tags:["BB"],CustomName:'{"text":"B","color": "blue","bold": true}'}
execute if score @s ct_score_timer_b matches 2200.. run execute as @a[tag=domination_ct,distance=..5] run xp add @s 20 levels
execute if score @s ct_score_timer_b matches 2200.. run execute as @a[tag=domination_ct,distance=..5] run stopsound @a player entity.player.levelup
execute if score @s ct_score_timer_b matches 2200.. run scoreboard players reset @s ct_score_timer_b