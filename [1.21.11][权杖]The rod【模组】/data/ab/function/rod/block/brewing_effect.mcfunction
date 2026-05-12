tp ^ ^ ^1
execute if entity @e[tag=ab.rod.emerald_marker,distance=..1.5] run kill
$particle entity_effect{color:[$(r),$(g),$(b),1]} ~ ~ ~ 0 0 0 0 0 force @a
execute as @s positioned ~ ~-1 ~ as @n[distance=..1,type=!#ab:non_mob] store result score @s ab.debuff run random value 1..9
execute as @s positioned ~ ~-1 ~ if entity @n[distance=..1,type=!#ab:non_mob] run kill
execute as @s positioned ~ ~ ~ unless block ~ ~ ~ #air run kill
scoreboard players add @s ab.live_time 1
kill @s[scores={ab.live_time=8..}]
