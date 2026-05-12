
$execute if predicate ab:is_sneaking run summon marker ~ ~ ~ {Tags:[ab.rod.him_ray,ab.reg],data:{UUID:$(UUID)}}
#execute as @e[tag=ab.rod.laser_damage] run tellraw @a {nbt:"data",entity:"@s"}
execute as @n[tag=ab.rod.him_ray,tag=ab.reg] run tp @s ^ ^ ^3 facing ^ ^ ^4
execute as @e[tag=ab.rod.him_ray] at @s run function ab:rod/block/him_ray