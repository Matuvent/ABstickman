
scoreboard players add @s ab.live_time 1
execute as @s[scores={ab.live_time=20..}] at @s run setblock ~ ~ ~ air
kill @s[scores={ab.live_time=20..}]
execute unless block ~ ~ ~ bedrock run kill