execute as @a[gamemode=adventure,tag=!gameover,distance=..5] at @s run playsound ui.button.click block @s ~ ~ ~ 0.15 2
execute store result score @s t_score_limit_c if entity @a[distance=..5]
execute if score @s t_score_limit_c matches 1 run scoreboard players add @s t_score_timer_c 10
execute if score @s t_score_limit_c matches 2 run scoreboard players add @s t_score_timer_c 12
execute if score @s t_score_limit_c matches 3 run scoreboard players add @s t_score_timer_c 14
execute if score @s t_score_limit_c matches 4 run scoreboard players add @s t_score_timer_c 16
execute if score @s t_score_limit_c matches 5.. run scoreboard players add @s t_score_timer_c 18
bossbar add score_timer_c {"text": ""}
bossbar set score_timer_c max 2200
bossbar set score_timer_c color red
bossbar set score_timer_c name {"text":"","extra":[{"text":"战术核心 ","bold":true,"color":"red"},{"text":"正在占领"},{"selector": "@e[tag=CC,limit=1]"},{"text":"点..."}]}
bossbar set score_timer_c players @a
execute store result bossbar score_timer_c value run scoreboard players get @s t_score_timer_c

execute if score @s t_score_timer_c matches 2200.. run bossbar set score_timer_c players @s
execute if score @s t_score_timer_c matches 2200.. run tag @a[team=red] add over_c
execute if score @s t_score_timer_c matches 2200.. run tag @a[team=blue] remove over_c
execute if score @s t_score_timer_c matches 2200.. run replaceitem entity @s armor.head slime_ball{CustomModelData:3}
execute if score @s t_score_timer_c matches 2200.. run tag @s add t
execute if score @s t_score_timer_c matches 2200.. if score #flag_score t_flag_score matches 0 run scoreboard players add #t_score t_score_show 1
execute if score @s t_score_timer_c matches 2200.. if score #flag_score t_flag_score matches 0 run scoreboard players remove #t_score t_score 1
execute if score @s t_score_timer_c matches 2200.. if score #flag_score t_flag_score matches 1 run scoreboard players add #t_score t_score_show 2
execute if score @s t_score_timer_c matches 2200.. if score #flag_score t_flag_score matches 1 run scoreboard players remove #t_score t_score 2
execute if score @s t_score_timer_c matches 2200.. if score #flag_score t_flag_score matches 2 run scoreboard players add #t_score t_score_show 3
execute if score @s t_score_timer_c matches 2200.. if score #flag_score t_flag_score matches 2 run scoreboard players remove #t_score t_score 3
execute if score @s t_score_timer_c matches 2200.. run scoreboard players add #flag_score t_flag_score 1
execute if score @s[tag=ct] t_score_timer_c matches 2200.. run scoreboard players remove #flag_score ct_flag_score 1
execute if score @s[tag=ct] t_score_timer_c matches 2200.. run tag @s remove ct
execute if score @s t_score_timer_c matches 2200.. run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2
execute if score @s t_score_timer_c matches 2200.. run tellraw @a {"text":"","extra":[{"text":"[","bold":true},{"text":"注意","bold":true,"color":"gold"},{"text":"]: ","bold":true},{"text":"战术核心","bold":true,"color":"red"},{"text":" 占领了"},{"selector": "@e[tag=CC,limit=1]"},{"text":"点!","color":"white"}]}
execute if score @s t_score_timer_c matches 2200.. run kill @e[type=area_effect_cloud,tag=CC]
execute if score @s t_score_timer_c matches 2200.. run summon area_effect_cloud ~ ~ ~ {Duration:300000000,Tags:["CC"],CustomName:'{"text":"C","color":"red","bold": true}'}
execute if score @s t_score_timer_c matches 2200.. run execute as @a[tag=domination_t,distance=..5] run xp add @s 20 levels
execute if score @s t_score_timer_c matches 2200.. run execute as @a[tag=domination_t,distance=..5] run stopsound @a player entity.player.levelup
execute if score @s t_score_timer_c matches 2200.. run scoreboard players reset @s t_score_timer_c