
summon marker ~ ~ ~ {Tags:[ab.rod.lightning_rod_ray,ab.reg]}
#execute as @e[tag=ab.rod.laser_damage] run tellraw @a {nbt:"data",entity:"@s"}
execute as @n[tag=ab.rod.lightning_rod_ray,tag=ab.reg] run tp @s ^ ^ ^1.5 facing ^ ^ ^3
execute as @e[tag=ab.rod.lightning_rod_ray] at @s run function ab:rod/block/lightning_rod_ray