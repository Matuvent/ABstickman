tp ^ ^ ^1
execute if entity @e[tag=ab.rod.emerald_marker,distance=..1.5] run kill
particle flame ~ ~ ~ 0 0 0 0 0 force @a
execute as @s positioned ~ ~-1 ~ run damage @n[distance=..1,type=!#ab:non_mob] 1 in_fire
execute as @s positioned ~ ~-1 ~ if entity @n[distance=..1,type=!#ab:non_mob] run kill
execute as @s positioned ~ ~ ~ unless block ~ ~ ~ #air run kill
scoreboard players add @s ab.live_time 1
kill @s[scores={ab.live_time=10..}]
