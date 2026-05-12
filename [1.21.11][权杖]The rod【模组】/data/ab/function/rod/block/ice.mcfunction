tp ^ ^ ^1
execute positioned ~ ~-1 ~ as @n[type=!#ab:non_mob,distance=..1] at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 ice keep
execute unless block ~ ~ ~ #air run kill
setblock ^ ^ ^-1 ice
setblock ^ ^ ^-3 air
scoreboard players add @s ab.live_time 1
kill @s[scores={ab.live_time=40..}]