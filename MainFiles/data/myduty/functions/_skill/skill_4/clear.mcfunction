kill @a[distance=..1,tag=!revive,tag=!gameover]
execute if entity @a[distance=..1,tag=!revive,tag=!gameover] run tellraw @a {"text": "","extra":[{"selector": "@a[scores={death=1}]"},{"text": "被地雷炸的粉身碎骨"}]}
playsound entity.generic.explode master @a ~ ~ ~ 1 1
particle explosion_emitter
tp @s ~ ~-99 ~