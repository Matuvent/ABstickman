tag @n[distance=..3.,tag=!ab.rod.portal] add ab.teleport
tag @s add ab.import
execute as @e[tag=ab.rod.portal] run function ab:rod/block/end_portal_teleport_test
#execute as @e[tag=ab.rod.portal] run tellraw @a [{score:{name:"@s",objective:"ab.temp"}},{score:{name:"@s",objective:"ab.temp1"}}]
execute as @n[scores={ab.temp=0,ab.temp1=0},distance=1..,tag=ab.rod.portal] if entity @n[tag=ab.teleport,type=!player] at @s run function ab:rod/block/end_portal_teleport_move
execute as @n[scores={ab.temp=0,ab.temp1=0},distance=1..,tag=ab.rod.portal] if entity @n[tag=ab.teleport,type=player] at @s run function ab:rod/block/end_portal_teleport_move_player
tag @e[tag=ab.teleport] remove ab.teleport
tag @e[tag=ab.import] remove ab.import