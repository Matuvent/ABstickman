tp ^ ^ ^0.8
execute if entity @e[distance=..20,tag=ab.rod.bee_marker] run tp @s ^ ^ ^0.8 facing entity @n[distance=..20,tag=ab.rod.bee_marker]
kill @n[distance=..1.5,tag=ab.rod.bee_marker]
execute as @s positioned ~ ~-0.5 ~ run damage @n[distance=..1,type=!#ab:non_mob] 3 mob_attack
execute as @s positioned ~ ~-0.5 ~ run effect give @n[distance=..1.5,type=!#ab:non_mob] poison 5 1
execute as @s[tag=ab.rod.creeper_bee] positioned ~ ~-0.5 ~ if entity @n[distance=..1.5,type=!#ab:non_mob] run summon tnt ~ ~ ~ {fuse:-1,explosion_power:4}
execute as @s positioned ~ ~-0.5 ~ if entity @n[distance=..1,type=!#ab:non_mob] run kill
execute at @s[tag=ab.rod.creeper_bee] unless block ~ ~ ~ #air run summon tnt ~ ~ ~ {fuse:-1,explosion_power:4}
execute at @s unless block ~ ~ ~ #air run kill
scoreboard players add @s ab.live_time 1
kill @s[scores={ab.live_time=100..}]
