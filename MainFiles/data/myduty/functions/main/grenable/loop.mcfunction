execute as @e[type=tac:throwable_grenade] store result score @s uuid run data get entity @s Owner[0]
execute as @a store result score @s uuid run data get entity @s UUID[0]
execute as @a if score @e[type=tac:throwable_grenade,limit=1,sort=arbitrary] uuid = @s uuid run tag @s add light