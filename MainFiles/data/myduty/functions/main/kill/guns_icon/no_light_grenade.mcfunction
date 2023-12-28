tag @s remove light
kill @e[tag=guns_icon,limit=1,sort=nearest]
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["guns_icon"],CustomName:'{"text":"炸","font": "minecraft:kill_icon"}'}