execute if entity @a[tag=!ready] if score #ready_player ready_player matches ..1 run function myduty:lobby/start_game/no
execute if entity @a[tag=!ready] if score #ready_player ready_player matches 2.. run function myduty:lobby/start_game/no
execute unless entity @a[tag=!ready] if score #ready_player ready_player matches ..1 run function myduty:lobby/start_game/no
execute unless entity @a[tag=!ready] if score #ready_player ready_player matches 2.. if entity @a[team=blue] unless entity @a[team=red] run function myduty:lobby/start_game/no
execute unless entity @a[tag=!ready] if score #ready_player ready_player matches 2.. unless entity @a[team=blue] if entity @a[team=red] run function myduty:lobby/start_game/no
execute unless entity @a[tag=!ready] if score #ready_player ready_player matches 2.. if entity @a[team=blue] if entity @a[team=red] run function myduty:lobby/start_game/yes