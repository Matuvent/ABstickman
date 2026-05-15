kill @e[tag=ab.rod.bee_marker]

summon marker ~ ~ ~ {Tags:[ab.rod.bee_ray,ab.reg]}
execute as @n[tag=ab.rod.bee_ray,tag=ab.reg] run tp @s ^ ^ ^2.5 facing ^ ^ ^3
execute as @e[tag=ab.rod.bee_ray] at @s run function ab:rod/block/bee_nest_ray
