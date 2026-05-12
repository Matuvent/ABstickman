execute as @s[tag=ab.rod.lapis_ray] at @s run tp ^ ^ ^1
#execute as @s[tag=ab.rod.lapis_ray] at @s run tellraw @a {score:{name:"@s",objective:"ab.laser_length"}}
#execute as @s[tag=ab.rod.lapis_ray] at @s run particle end_rod ~ ~ ~
execute as @s[tag=ab.rod.lapis_ray] at @s run particle dust{color:473234,scale:0.5} ~ ~ ~ 0.25 0.25 0.25 0.01 1 force @a
execute as @s[tag=ab.rod.lapis_ray] run scoreboard players set @s ab.temp 0
execute as @s[tag=ab.rod.lapis_ray] at @s if entity @e[tag=ab.enchant_block,distance=..0.5] run function ab:rod/block/lapis_unenchant
execute as @s[tag=ab.rod.lapis_ray] at @s unless block ~ ~ ~ #air if score @s ab.temp matches 0 run function ab:rod/block/lapis_enchant
execute as @s[tag=ab.rod.lapis_ray] at @s unless entity @a[distance=..50] run kill
execute as @n[tag=ab.rod.lapis_ray] at @s if entity @s run function ab:rod/block/lapis_ray