scoreboard players add @s ab.portal_time 2
execute if score @s ab.portal_time matches 2 run scoreboard players add @s ab.portal_count 1
execute if score @s ab.portal_time matches 2 if score @s ab.portal_count matches 2.. run scoreboard players add @s ab.portal_num 1
execute if score @s ab.portal_time matches 2 if score @s ab.portal_count matches 2.. run scoreboard players set @s ab.portal_count 0
execute if score @s ab.portal_time matches 2 store result storage ab rod.portal.num int 1 run scoreboard players get @s ab.portal_num
execute if score @s ab.portal_time matches 2 run data modify storage ab rod.portal.UUID set from entity @s UUID
execute if score @s ab.portal_time matches 2 positioned ^ ^ ^3 run function ab:rod/block/end_portal_frame_summon with storage ab rod.portal
execute as @n[tag=ab.rod.portal] run tp @s ^ ^ ^3 facing ^ ^ ^-4