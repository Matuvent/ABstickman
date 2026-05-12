tp ^ ^ ^0.5
function ab:rod/block/barrier_summon
scoreboard players add @s ab.live_time 1
execute as @s[scores={ab.live_time=20..}] at @r run setblock ~ ~ ~ air
kill @s[scores={ab.live_time=20..}]