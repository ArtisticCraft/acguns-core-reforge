execute as @a[team=blue] if score @s kda_k = #mvp_blue kda_k run tag @s add mvp_blue
execute as @a[team=blue] if score @s kda_k < #mvp_blue kda_k run tag @s remove mvp_blue
execute as @a[team=blue] if score @s kda_k > #mvp_blue kda_k run scoreboard players operation #mvp_blue kda_k = @s kda_k
execute as @a[team=red] if score @s kda_k = #mvp_red kda_k run tag @s add mvp_red
execute as @a[team=red] if score @s kda_k < #mvp_red kda_k run tag @s remove mvp_red
execute as @a[team=red] if score @s kda_k > #mvp_red kda_k run scoreboard players operation #mvp_red kda_k = @s kda_k