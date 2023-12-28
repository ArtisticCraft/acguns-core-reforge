tag @a[distance=..15,team=blue,gamemode=adventure,tag=!gameover] add c4_drop_find
tellraw @a[team=blue] {"text": "","extra":[{"text": "<"},{"selector": "@a[tag=c4_drop_find,limit=1]"},{"text": ">"},{"text": " 我发现了"},{"text": "C4炸弹","color": "red","bold": true},{"text": "已掉落!"}]}
execute as @a[team=blue] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0
effect give @s glowing 10 1 true
tag @s add c4_drop_find