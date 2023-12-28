execute as @a[scores={reght_click_c4=1..}] at @s run function myduty:main/mode_4/c4/drop
execute as @e[type=armor_stand,tag=c4] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute as @e[type=armor_stand,tag=c4] at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
execute as @e[type=armor_stand,tag=c4] at @s if block ~ ~-0.01 ~ air run tp @s ~ ~-0.01 ~
execute as @e[type=armor_stand,tag=c4] at @s unless block ~ ~-0.01 ~ air unless entity @e[tag=c4_text] run summon armor_stand ~ ~0.5 ~ {Tags:["c4_text"],CustomName:'{"text":"C4炸弹","color": "red","bold": true}',CustomNameVisible:1b,Invisible:false,Marker:true}
execute as @e[type=armor_stand,tag=c4,nbt={PortalCooldown:0}] at @s if entity @a[gamemode=!spectator,distance=..1,team=red] run function myduty:main/mode_4/c4/give

#
execute as @e[type=armor_stand,tag=c4_pt] at @s as @p[distance=..3,tag=c4,team=red,nbt={SelectedItem:{tag:{Tags:["c4"]}}},scores={sprint_one_cm=0}] at @s run function myduty:main/mode_4/c4/install/installing
execute as @a[team=red,tag=c4] at @s if entity @e[type=armor_stand,tag=c4_pt,distance=..3] unless entity @s[tag=c4,team=red,nbt={SelectedItem:{tag:{Tags:["c4"]}}}] run function myduty:main/mode_4/c4/stop
execute as @a[team=red,tag=c4] at @s if entity @e[type=armor_stand,tag=c4_pt,distance=..3] if score @s sprint_one_cm matches 1.. run function myduty:main/mode_4/c4/stop
#
execute as @e[type=armor_stand,tag=c4_install] at @s as @a[distance=..1,team=blue,nbt={SelectedItem:{tag:{Tags:["shears"]}}},scores={sprint_one_cm=0}] at @s if score #mode_4 start matches 1 run function myduty:main/mode_4/c4/defuse/defusing
execute as @a[team=blue] at @s if entity @e[type=armor_stand,tag=c4_install,distance=..3] unless entity @s[team=blue,nbt={SelectedItem:{tag:{Tags:["shears"]}}}] run function myduty:main/mode_4/c4/stop
execute as @a[team=blue] at @s if entity @e[type=armor_stand,tag=c4_install,distance=..3] if score @s sprint_one_cm matches 1.. run function myduty:main/mode_4/c4/stop

execute as @e[type=armor_stand,tag=c4_install] at @s run function myduty:main/mode_4/c4/boom_time
execute as @e[type=armor_stand,tag=c4_install,tag=!c4_find] at @s if entity @a[distance=..16,team=blue,gamemode=adventure,tag=!gameover] run function myduty:main/mode_4/c4/c4_find
execute as @e[type=armor_stand,tag=c4,tag=!c4_drop_find] at @s if entity @a[distance=..15,team=blue,gamemode=adventure,tag=!gameover] run function myduty:main/mode_4/c4/c4_drop_find