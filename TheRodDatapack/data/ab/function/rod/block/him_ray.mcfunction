execute as @s[tag=ab.rod.him_ray] at @s run tp ^ ^ ^1
execute as @s[tag=ab.rod.him_ray] at @s unless block ~ ~ ~ #air run function ab:rod/block/him_ray_end
execute as @s[tag=ab.rod.him_ray] at @s positioned ~ ~-1 ~ if entity @e[type=!#ab:non_mob,distance=..2] run function ab:rod/block/him_ray_end
execute as @s[tag=ab.rod.him_ray] run scoreboard players set @s ab.temp 0
execute as @s[tag=ab.rod.him_ray] at @s unless entity @a[distance=..50] run function ab:rod/block/him_ray_end
execute as @n[tag=ab.rod.him_ray] at @s if entity @s run function ab:rod/block/him_ray