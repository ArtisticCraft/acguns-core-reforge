scoreboard players operation #temp score = #blue score
scoreboard players operation #blue score = #red score
scoreboard players operation #red score = #temp score
scoreboard players operation #temp score_show = #blue score_show
scoreboard players operation #blue score_show = #red score_show
scoreboard players operation #red score_show = #temp score_show
team join blue @a[tag=red]
team join red @a[tag=blue]
scoreboard players set @a revive_thing 0
scoreboard players set @a revive_thing_sk 51
scoreboard players set @a revive_thing_fwq 20
xp set @a 0 levels
tag @a remove blue
tag @a remove red
tag @a remove mvp_blue
tag @a remove mvp_blue_4
tag @a remove mvp_red
tag @a remove mvp_red_4
tag @a[team=blue] add blue
tag @a[team=red] add red
title @a title {"text":"","extra":[{"text":"换边!","color": "aqua","bold":true}]}