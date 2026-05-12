$summon marker ~ ~ ~ {Tags:[ab.rod.portal_ray,ab.reg],data:{UUID:$(UUID)}}
execute as @n[tag=ab.rod.portal_ray,tag=ab.reg] run tp @s ^ ^ ^0.5 facing ^ ^ ^3

scoreboard players add @s ab.portal_count 1
execute if score @s ab.portal_count matches 2.. run scoreboard players add @s ab.portal_num 1
execute if score @s ab.portal_count matches 2.. run scoreboard players set @s ab.portal_count 0
execute store result entity @n[tag=ab.rod.portal_ray] data.num int 1 run scoreboard players get @s ab.portal_num
execute as @e[tag=ab.rod.portal_ray] at @s run function ab:rod/block/end_portal_ray