execute as @s[tag=ab.rod.portal_ray] at @s run tp ^ ^ ^0.5
execute unless block ~ ~ ~ #air positioned ^ ^ ^-1 facing ^ ^ ^-5 run function ab:rod/block/end_portal_frame_summon with entity @s data
execute unless block ~ ~ ~ #air run kill

execute as @s[tag=ab.rod.portal_ray] at @s unless entity @a[distance=..50] facing ^ ^ ^-5 run function ab:rod/block/end_portal_frame_summon with entity @s data
execute as @s[tag=ab.rod.portal_ray] at @s unless entity @a[distance=..50] run kill
execute as @n[tag=ab.rod.portal_ray] at @s if entity @s run function ab:rod/block/end_portal_ray