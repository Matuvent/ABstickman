tp ^ ^ ^1
setblock ^ ^ ^-6 air
execute positioned ~ ~-1 ~ run damage @n[distance=..2] 100 mob_attack at ~ ~ ~
execute positioned ~ ~-1 ~ run damage @n[distance=..2] 3 out_of_world at ~ ~ ~
scoreboard players add @s ab.live_time 1
kill @s[scores={ab.live_time=100..}]