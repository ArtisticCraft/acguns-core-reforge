#菜单
execute if score @s team_fight_menu matches 8888 run function myduty:main/gui/menu/menu_one_itmes
execute if score @s team_fight_menu matches 0 run function myduty:main/gui/menu/menu
execute if score @s team_fight_menu matches 2 run function myduty:main/gui/menu/menu_zwq
execute if score @s team_fight_menu matches 3 run function myduty:main/gui/menu/menu_fwq
execute if score @s team_fight_menu matches 4 run function myduty:main/gui/menu/menu_qxwq
execute if score @s team_fight_menu matches 5 run function myduty:main/gui/menu/menu_xdq
execute if score @s team_fight_menu matches 6 run function myduty:main/gui/menu/menu_skill

#购物
#主武器
execute if score @s team_fight_shop matches 10 run function myduty:main/gui/menu/zwq_menu/ak47
execute if score @s team_fight_shop matches 11 run function myduty:main/gui/menu/zwq_menu/m4
execute if score @s team_fight_shop matches 12 run function myduty:main/gui/menu/zwq_menu/qbz_95
execute if score @s team_fight_shop matches 13 run function myduty:main/gui/menu/zwq_menu/scar_l
execute if score @s team_fight_shop matches 14 run function myduty:main/gui/menu/zwq_menu/ai_awp
execute if score @s team_fight_shop matches 15 run function myduty:main/gui/menu/zwq_menu/m24
execute if score @s team_fight_shop matches 16 run function myduty:main/gui/menu/zwq_menu/sks_tactical
execute if score @s team_fight_shop matches 17 run function myduty:main/gui/menu/zwq_menu/type81_x
execute if score @s team_fight_shop matches 18 run function myduty:main/gui/menu/zwq_menu/sig_mcx_spear
execute if score @s team_fight_shop matches 19 run function myduty:main/gui/menu/zwq_menu/qbz_191
execute if score @s team_fight_shop matches 101 run function myduty:main/gui/menu/zwq_menu/hk416_a5
execute if score @s team_fight_shop matches 102 run function myduty:main/gui/menu/zwq_menu/scar_h
execute if score @s team_fight_shop matches 103 run function myduty:main/gui/menu/zwq_menu/fn_fal
execute if score @s team_fight_shop matches 104 run function myduty:main/gui/menu/zwq_menu/mk47
execute if score @s team_fight_shop matches 105 run function myduty:main/gui/menu/zwq_menu/m16a4
execute if score @s team_fight_shop matches 106 run function myduty:main/gui/menu/zwq_menu/hk_g3
execute if score @s team_fight_shop matches 107 run function myduty:main/gui/menu/zwq_menu/mrad

#副武器
execute if score @s team_fight_shop matches 20 run function myduty:main/gui/menu/fwq_menu/m1911
execute if score @s team_fight_shop matches 21 run function myduty:main/gui/menu/fwq_menu/glock_18
execute if score @s team_fight_shop matches 22 run function myduty:main/gui/menu/fwq_menu/deagle_357
execute if score @s team_fight_shop matches 23 run function myduty:main/gui/menu/fwq_menu/sti2011
execute if score @s team_fight_shop matches 24 run function myduty:main/gui/menu/fwq_menu/m92fs
execute if score @s team_fight_shop matches 25 run function myduty:main/gui/menu/fwq_menu/cz75_auto
execute if score @s team_fight_shop matches 26 run function myduty:main/gui/menu/fwq_menu/glock_17
execute if score @s team_fight_shop matches 27 run function myduty:main/gui/menu/fwq_menu/mk23
execute if score @s team_fight_shop matches 28 run function myduty:main/gui/menu/fwq_menu/tti_g34
execute if score @s team_fight_shop matches 29 run function myduty:main/gui/menu/fwq_menu/shield

#轻型武器
execute if score @s team_fight_shop matches 30 run function myduty:main/gui/menu/qxwq_menu/micro_uzi
execute if score @s team_fight_shop matches 31 run function myduty:main/gui/menu/qxwq_menu/mp9
execute if score @s team_fight_shop matches 32 run function myduty:main/gui/menu/qxwq_menu/uzi
execute if score @s team_fight_shop matches 33 run function myduty:main/gui/menu/qxwq_menu/udp_9
execute if score @s team_fight_shop matches 34 run function myduty:main/gui/menu/qxwq_menu/m1a1_smg
execute if score @s team_fight_shop matches 35 run function myduty:main/gui/menu/qxwq_menu/vector45
execute if score @s team_fight_shop matches 36 run function myduty:main/gui/menu/qxwq_menu/hk_mp5a5
execute if score @s team_fight_shop matches 37 run function myduty:main/gui/menu/qxwq_menu/mp7

#霰弹枪武器
execute if score @s team_fight_shop matches 40 run function myduty:main/gui/menu/xdq_menu/db_short
execute if score @s team_fight_shop matches 41 run function myduty:main/gui/menu/xdq_menu/m870_classic
execute if score @s team_fight_shop matches 42 run function myduty:main/gui/menu/xdq_menu/m1014
execute if score @s team_fight_shop matches 43 run function myduty:main/gui/menu/xdq_menu/aa_12

#技能
execute if score @s team_fight_skill matches 50 run function myduty:main/gui/menu/skill_menu/skill_1
execute if score @s team_fight_skill matches 51 run function myduty:main/gui/menu/skill_menu/skill_2
execute if score @s team_fight_skill matches 52 run function myduty:main/gui/menu/skill_menu/skill_3
execute if score @s team_fight_skill matches 53 run function myduty:main/gui/menu/skill_menu/skill_4
execute if score @s team_fight_skill matches 54 run function myduty:main/gui/menu/skill_menu/skill_5
execute if score @s team_fight_skill matches 55 run function myduty:main/gui/menu/skill_menu/skill_6