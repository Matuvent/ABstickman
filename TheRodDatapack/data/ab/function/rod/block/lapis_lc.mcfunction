
$execute unless predicate ab:is_sneaking run summon marker ~ ~ ~ {Tags:[ab.rod.lapis_ray,ab.reg],data:{owner:$(UUID)}}
#execute as @e[tag=ab.rod.laser_damage] run tellraw @a {nbt:"data",entity:"@s"}
execute as @n[tag=ab.rod.lapis_ray,tag=ab.reg] run tp @s ^ ^ ^0.5 facing ^ ^ ^3
execute as @e[tag=ab.rod.lapis_ray] at @s run function ab:rod/block/lapis_ray


execute if predicate ab:is_sneaking run summon marker ~ ~ ~ {Tags:[ab.rod.lapis_laser,ab.reg]}
#execute as @e[tag=ab.rod.laser_damage] run tellraw @a {nbt:"data",entity:"@s"}
execute as @n[tag=ab.rod.lapis_laser,tag=ab.reg] run tp @s ^ ^ ^0.5 facing ^ ^ ^3
execute as @e[tag=ab.rod.lapis_laser] at @s run function ab:rod/block/lapis_laser