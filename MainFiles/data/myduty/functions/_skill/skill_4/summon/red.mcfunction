summon zombie ~ ~0.5 ~ {Tags:["red","skill_4"],ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:6}}],ArmorDropChances:[0F,0F,0F,0F],ActiveEffects:[{Id:14,Amplifier:0,Duration:999999999,ShowParticles:false}],DeathLootTable:"minecraft:123",IsBaby:true,NoAI:true,Silent:true,Health:500.0f,PortalCooldown:2400,Attributes:[{Name:"generic.max_health", Base:500d}]}
execute as @e[tag=red,tag=skill_4] unless score @s uid matches 0.. run tag @s add uid
scoreboard players operation @e[tag=red,tag=skill_4,tag=uid] uid = @s uid
execute as @e[tag=red,tag=skill_4,tag=uid] if score @s uid matches 0.. run tag @s remove uid