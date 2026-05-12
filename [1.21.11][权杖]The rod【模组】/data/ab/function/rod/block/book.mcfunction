tp ^ ^ ^1
execute as @s positioned ~ ~-1 ~ run damage @n[distance=..1,type=!#ab:non_mob] 3 mob_attack
execute as @s positioned ~ ~-1 ~ if entity @n[distance=..1,type=!#ab:non_mob] run kill

execute as @s positioned ~ ~ ~ unless block ~ ~ ~ #air run kill
scoreboard players add @s ab.live_time 1
kill @s[scores={ab.live_time=100..}]
