playsound ui.button.click block @s ~ ~ ~
title @s reset
title @s title {"text":"\uea02","font": "minecraft:hud"}
tellraw @s [{"text":"[","bold":true},{"text":"提示","bold":true,"color":"aqua"},{"text":"]: ","bold":true,"color":"white"},{"text":"请确保你的屏幕边缘有红色提示。","bold":false,"color":"white"}]
tellraw @s [{"text":"如果需要，请调整你的"},{"text":"[界面尺寸]","color":"yellow"},{"text":"来适配HUD。"}]