function myduty:main/gui/clear
function myduty:main/gui/gui_ui

#主菜单
execute store result score @s team_fight_ui run clear @s barrier{ui:{id:9999}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/ui

#子菜单
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:2}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/ui_zwq
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:3}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/ui_fwq
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:4}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/ui_qxwq
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:5}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/ui_xdq
execute store result score @s team_fight_ui run clear @s book{ui:{id:6}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/ui_skill

#主武器菜单
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:10}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/zwq_ui/10
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:11}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/zwq_ui/11
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:12}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/zwq_ui/12
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:13}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/zwq_ui/13
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:14}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/zwq_ui/14
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:15}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/zwq_ui/15
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:16}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/zwq_ui/16
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:17}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/zwq_ui/17
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:18}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/zwq_ui/18
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:19}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/zwq_ui/19
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:101}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/zwq_ui/101
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:102}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/zwq_ui/102
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:103}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/zwq_ui/103
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:104}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/zwq_ui/104
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:105}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/zwq_ui/105
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:106}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/zwq_ui/106
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:107}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/zwq_ui/107

#副武器菜单
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:20}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/fwq_ui/20
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:21}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/fwq_ui/21
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:22}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/fwq_ui/22
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:23}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/fwq_ui/23
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:24}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/fwq_ui/24
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:25}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/fwq_ui/25
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:26}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/fwq_ui/26
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:27}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/fwq_ui/27
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:28}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/fwq_ui/28
execute store result score @s team_fight_ui run clear @s shield{ui:{id:29}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/fwq_ui/29

#轻型武器菜单
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:30}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/qxwq_ui/30
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:31}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/qxwq_ui/31
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:32}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/qxwq_ui/32
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:33}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/qxwq_ui/33
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:34}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/qxwq_ui/34
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:35}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/qxwq_ui/35
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:36}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/qxwq_ui/36
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:37}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/qxwq_ui/37

#霰弹枪菜单
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:40}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/xdq_ui/40
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:41}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/xdq_ui/41
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:42}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/xdq_ui/42
execute store result score @s team_fight_ui run clear @s #tac{ui:{id:43}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/xdq_ui/43

#技能选择
execute store result score @s team_fight_ui run clear @s carrot_on_a_stick{ui:{id:50}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/skill_ui/50
execute store result score @s team_fight_ui run clear @s carrot_on_a_stick{ui:{id:51}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/skill_ui/51
execute store result score @s team_fight_ui run clear @s carrot_on_a_stick{ui:{id:52}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/skill_ui/52
execute store result score @s team_fight_ui run clear @s carrot_on_a_stick{ui:{id:53}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/skill_ui/53
execute store result score @s team_fight_ui run clear @s carrot_on_a_stick{ui:{id:54}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/skill_ui/54
execute store result score @s team_fight_ui run clear @s zombie_extreme:cardboard_box{ui:{id:55}}
execute if score @s team_fight_ui matches 1.. run function myduty:main/gui/ui/skill_ui/55