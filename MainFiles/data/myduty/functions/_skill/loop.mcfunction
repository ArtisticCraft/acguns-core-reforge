#loop
execute as @a[scores={reght_click=1..}] at @s run function myduty:_skill/reght_click
execute as @a[tag=cd,gamemode=adventure] at @s run function myduty:_skill/cd
#skill
execute as @a[tag=!cd,level=..99,gamemode=adventure,tag=skill] at @s if score @s revive_thing_sk matches 50 run function myduty:_skill/skill_1/add
execute as @a[tag=!cd,level=..99,gamemode=adventure,tag=skill] at @s if score @s revive_thing_sk matches 51 run function myduty:_skill/skill_2/add
execute as @a[tag=!cd,level=..99,gamemode=adventure,tag=skill] at @s if score @s revive_thing_sk matches 52 run function myduty:_skill/skill_3/add
execute as @a[tag=!cd,level=..99,gamemode=adventure,tag=skill] at @s if score @s revive_thing_sk matches 53 run function myduty:_skill/skill_4/add
execute as @a[tag=!cd,level=..99,gamemode=adventure,tag=skill] at @s if score @s revive_thing_sk matches 54 run function myduty:_skill/skill_5/add
execute as @a[tag=!cd,level=..99,gamemode=adventure,tag=skill] at @s if score @s revive_thing_sk matches 55 run function myduty:_skill/skill_6/add
#skill_4
execute if entity @e[tag=skill_4] run function myduty:_skill/skill_4/loop
#skill_5
execute if entity @e[tag=skill_5] run function myduty:_skill/skill_5/loop
#level
xp set @a[level=101..] 100 levels