tp @s @r[tag=player_game]
tag @s add random_team
execute at @s if entity @s[tag=!midgame] as @a[tag=player_game,sort=nearest,limit=1] if entity @s[team=blue] run execute as @a[tag=random_team] run function myduty:main/joining_midgame/join_blue
execute at @s if entity @s[tag=!midgame] as @a[tag=player_game,sort=nearest,limit=1] if entity @s[team=red] run execute as @a[tag=random_team] run function myduty:main/joining_midgame/join_red
tag @s remove random_team