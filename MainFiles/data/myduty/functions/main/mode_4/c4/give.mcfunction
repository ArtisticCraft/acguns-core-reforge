tag @a[gamemode=!spectator,distance=..1,team=red,limit=1] add c4
replaceitem entity @a[team=red,tag=c4] hotbar.5 warped_fungus_on_a_stick{Tags:["c4"],CustomModelData:1,display:{Name:'{"text":"C4炸弹","color":"red","italic": false,"bold": true}',Lore:['{"text":"可以安装在特定的位置","color":"gray","italic": false}','{"text":"按住Shift安装炸弹","color":"gray","italic": false}','{"text":"右键丢出","color":"gray","italic": false}']}}
kill @e[type=armor_stand,tag=c4]
kill @e[type=armor_stand,tag=c4_text]
execute as @a[team=red,tag=c4] at @s run playsound ui.button.click master @s ~ ~ ~ 1 2
tellraw @a[team=red] {"text": "","extra":[{"text":"[","bold":true},{"text":"注意","bold":true,"color":"yellow"},{"text":"]: ","bold":true},{"text": "玩家 "},{"selector": "@a[team=red,tag=c4]"},{"text": " 捡起了"},{"text": "C4炸弹","color": "red","bold": true}]}