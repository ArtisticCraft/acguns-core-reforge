execute if entity @s[tag=!ready_yes] unless entity @s[nbt={Inventory:[{Slot:4b,tag:{Tags:["yes"]}}]}] if score #mode start matches 0 run function myduty:lobby/inventory_gui/ready_yes
execute if entity @s[tag=ready_yes] unless entity @s[nbt={Inventory:[{Slot:4b,tag:{Tags:["no"]}}]}] if score #mode start matches 0 run function myduty:lobby/inventory_gui/ready_no
execute if entity @s[team=lobby] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{Tags:["tips"]}}]}] run function myduty:lobby/inventory_gui/tips
execute if entity @s[team=lobby] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{Tags:["mode"]}}]}] run function myduty:lobby/inventory_gui/mode
execute if entity @s[tag=ready_yes] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{Tags:["tips"]}}]}] run function myduty:lobby/inventory_gui/tips
execute if entity @s[tag=ready_yes] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{Tags:["mode"]}}]}] run function myduty:lobby/inventory_gui/mode


execute if score @s lobby_ui matches 1 run function myduty:lobby/inventory_gui/tips_clear
execute if score @s lobby_ui matches 2 run function myduty:lobby/inventory_gui/mode_clear