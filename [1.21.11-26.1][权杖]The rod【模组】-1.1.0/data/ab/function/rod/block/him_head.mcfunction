tp ^ ^ ^1
execute if entity @e[tag=ab.rod.emerald_marker,distance=..1.5] run kill
execute as @s positioned ~ ~-0.5 ~ run damage @n[distance=..1,type=!#ab:non_mob] 3 out_of_world
execute as @s positioned ~ ~-0.5 ~ if entity @n[distance=..1,type=!#ab:non_mob] run kill
scoreboard players add @s ab.live_time 1
kill @s[scores={ab.live_time=100..}]