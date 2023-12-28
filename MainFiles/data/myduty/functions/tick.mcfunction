execute if score #mode start matches 1 run function myduty:main/joining_midgame/loop
execute if score #mode start matches 1 run function myduty:_skill/loop
execute if score #mode start matches 1 run function myduty:main/grenable/loop
function myduty:lobby/loop
function myduty:main/health/main
execute if score #mode start matches 1 run function myduty:main/kda/mvp
execute as @a if score @s kill_time matches ..200 run function myduty:main/kill/loop
#属性
execute as @a run attribute @s generic.attack_damage base set 0
execute as @a run attribute @s minecraft:generic.max_health base set 30
execute as @a at @s run spawnpoint @s ~ ~ ~ ~ 
effect give @a[tag=!ready] saturation 2 0 true
#Mode
execute if score #mode mode matches 1 if score #mode start matches 1 run function myduty:main/mode_1/loop
execute if score #mode mode matches 2 if score #mode start matches 1 run function myduty:main/mode_2/loop
execute if score #mode mode matches 3 if score #mode start matches 1 run function myduty:main/mode_3/loop
execute if score #mode mode matches 4 if score #mode start matches 1 run function myduty:main/mode_4/loop
execute if score #mode mode matches 5 if score #mode start matches 1 run function myduty:main/mode_5/loop
#Menu
execute as @a run function myduty:main/gui/gui
execute as @a[tag=menu_inventory] run function myduty:main/gui/menu/menu_inventory
#uid
execute as @a unless score @s uid matches 0.. store result score @s uid run scoreboard players add #uid uid 1
#no_player_reset
execute if score #mode start matches 1 if score #blue_player ready_player matches 0 if score #red_player ready_player matches 0 run function myduty:load

execute as @a[tag=light] unless score @e[type=tac:throwable_grenade,limit=1,sort=arbitrary] uuid = @s uuid run tag @s remove light
execute as @a[tag=light] unless entity @e[type=tac:throwable_grenade,limit=1,sort=arbitrary] run tag @s remove light