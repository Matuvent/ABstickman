tp ^ ^ ^1
particle dust{color:16711680,scale:0.5} ~ ~ ~ 0.25 0.25 0.25 0.1 1 force @a
execute as @s run damage @n[distance=..1,type=!#ab:non_mob] 3 in_fire
execute as @s if entity @n[distance=..1,type=!#ab:non_mob] run kill
execute as @s unless block ~ ~ ~ #air run kill
scoreboard players add @s ab.live_time 1
kill @s[scores={ab.live_time=200..}]