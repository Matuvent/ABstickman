execute as @s[tag=ab.rod.lapis_laser] at @s run tp ^ ^ ^1
execute if entity @e[tag=ab.rod.emerald_marker,distance=..1.5] run kill
#execute as @s[tag=ab.rod.lapis_laser] at @s run tellraw @a {score:{name:"@s",objective:"ab.laser_length"}}
#execute as @s[tag=ab.rod.lapis_laser] at @s run particle end_rod ~ ~ ~
execute as @s[tag=ab.rod.lapis_laser] at @s run particle dust{color:473234,scale:0.5} ~ ~ ~ 0.25 0.25 0.25 0.01 100 force @a

execute as @s[tag=ab.rod.lapis_laser] at @s positioned ~ ~-1 ~ run damage @n[distance=..1,type=!#ab:non_mob] 3 magic
execute as @s[tag=ab.rod.lapis_laser] at @s positioned ~ ~-1 ~ run kill @n[distance=..1,type=snowball]
execute as @s[tag=ab.rod.lapis_laser] at @s positioned ~ ~-1 ~ run kill @n[distance=..1,type=small_fireball]


execute as @s[tag=ab.rod.lapis_laser] at @s unless entity @a[distance=..50] run kill
execute as @n[tag=ab.rod.lapis_laser] at @s if entity @s run function ab:rod/block/lapis_laser