summon zombie ~ ~1 ~ {Tags:["red","skill_5"],ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8}}],ArmorDropChances:[0F,0F,0F,0F],ActiveEffects:[{Id:14,Amplifier:0,Duration:999999999,ShowParticles:false}],DeathLootTable:"minecraft:123",IsBaby:true,NoAI:true,Silent:true,Health:500.0f,PortalCooldown:1800,Attributes:[{Name:"generic.max_health", Base:500d}]}
execute as @e[tag=red,tag=skill_5] unless score @s uid matches 0.. run tag @s add uid
scoreboard players operation @e[tag=red,tag=skill_5,tag=uid] uid = @s uid
tp @e[tag=red,tag=skill_5,tag=uid] @s
tp @e[tag=red,tag=skill_5,tag=uid] ~ ~ ~ ~ 0
execute as @e[tag=red,tag=skill_5,tag=uid] if score @s uid matches 0.. run tag @s remove uid