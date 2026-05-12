
$summon marker ~ ~ ~ {Tags:[ab.rod.iron_chain,ab.reg],data:{UUID:$(UUID)}}
#execute as @e[tag=ab.rod.laser_damage] run tellraw @a {nbt:"data",entity:"@s"}
scoreboard players add @s ab.iron_chain_num 1
execute store result entity @n[tag=ab.rod.iron_chain,tag=ab.reg] data.num int 1 run scoreboard players get @s ab.iron_chain_num
execute as @n[tag=ab.rod.iron_chain,tag=ab.reg] run tp @s ^ ^ ^1.5 facing ^ ^ ^3
tag @n[tag=ab.rod.iron_chain,tag=ab.reg] remove ab.reg