execute as @r[team=lobby,tag=!team_chosed,tag=ready_yes] at @s run function myduty:lobby/team/random_team/join_blue
execute as @r[team=lobby,tag=!team_chosed,tag=ready_yes] at @s run function myduty:lobby/team/random_team/join_red
execute if entity @a[team=lobby,tag=!team_chosed,tag=ready_yes] run function myduty:lobby/team/random_team/random