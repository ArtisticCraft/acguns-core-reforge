tag @s add boom
execute as @a[team=red] if score @s uid = @e[tag=boom,tag=red,tag=skill_4,tag=!uid,limit=1] uid run execute store result score @s skill_4_kill run kill @a[team=blue,distance=..3,tag=!revive,tag=!gameover,gamemode=adventure]
execute as @a[team=red] run scoreboard players operation @s kill = @s skill_4_kill
execute as @a[team=red] if score @s uid = @e[tag=boom,tag=red,tag=skill_4,tag=!uid,limit=1] uid run kill @s[distance=..3,tag=!revive,tag=!gameover,gamemode=adventure]
tag @s remove boom
execute if entity @a[distance=..3,tag=!revive,tag=!gameover,gamemode=adventure] run tellraw @a {"text": "","extra":[{"selector": "@a[scores={death=1}]"},{"text": "被地雷炸的粉身碎骨"}]}
tp @s ~ ~-99 ~
playsound entity.generic.explode master @a ~ ~ ~ 1 1
particle explosion_emitter