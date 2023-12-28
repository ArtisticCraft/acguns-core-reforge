execute as @a at @s run playsound entity.generic.explode master @a ~ ~ ~ 15 0
execute at @e[type=armor_stand,tag=c4_install] run particle explosion_emitter ~ ~2 ~ 1 1 1 0 100 force @a
execute as @e[type=armor_stand,tag=c4_install] at @s as @a[distance=..25,gamemode=adventure] run kill @s
execute as @e[type=armor_stand,tag=c4_install] at @s if entity @a[distance=..25,scores={death=1}] run tellraw @a {"text": "","extra":[{"selector": "@a[scores={death=1}]"},{"text": "被C4地雷炸的粉身碎骨"}]}
kill @e[type=armor_stand,tag=c4_install] 