
execute as @e[distance=..2.5,tag=!ab.rod.portal] positioned ^ ^ ^10000 unless entity @s[distance=..9999.5] positioned ^ ^ ^-10000 as @n[tag=ab.rod.portal] at @s run function ab:rod/block/end_portal_teleport with entity @s data

scoreboard players add @s ab.live_time 1
kill @s[scores={ab.live_time=200..}]