tp ^ ^ ^1
execute positioned ~ ~-1 ~ run damage @n[type=!#ab:non_mob,distance=..1.5] 3 mob_attack

execute if block ~ ~ ~ bedrock run kill
execute if block ~ ~ ~ barrier run kill
execute unless block ~ ~ ~ bedrock unless block ~ ~ ~ barrier run setblock ~ ~ ~ netherrack
setblock ^ ^ ^-3 air
scoreboard players add @s ab.live_time 1
kill @s[scores={ab.live_time=40..}]