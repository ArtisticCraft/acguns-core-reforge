execute as @a[team=blue] if score @s kda_k_4 = #mvp_blue kda_k_4 run tag @s add mvp_blue_4
execute as @a[team=blue] if score @s kda_k_4 < #mvp_blue kda_k_4 run tag @s remove mvp_blue_4
execute as @a[team=blue] if score @s kda_k_4 > #mvp_blue kda_k_4 run scoreboard players operation #mvp_blue kda_k_4 = @s kda_k_4
execute as @a[team=red] if score @s kda_k_4 = #mvp_red kda_k_4 run tag @s add mvp_red_4
execute as @a[team=red] if score @s kda_k_4 < #mvp_red kda_k_4 run tag @s remove mvp_red_4
execute as @a[team=red] if score @s kda_k_4 > #mvp_red kda_k_4 run scoreboard players operation #mvp_red kda_k_4 = @s kda_k_4