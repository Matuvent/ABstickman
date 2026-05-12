execute as @s[tag=ab.rod.laser_damage] at @s run tp ^ ^ ^1

execute if entity @e[tag=ab.rod.emerald_marker,distance=..1.5] run function ab:rod/block/redstone_laser_return with entity @s data

execute as @s[tag=ab.rod.laser_damage] at @s run scoreboard players add @s ab.laser_length 1
#execute as @s[tag=ab.rod.laser_damage] at @s run tellraw @a {score:{name:"@s",objective:"ab.laser_length"}}
#execute as @s[tag=ab.rod.laser_damage] at @s run particle end_rod ~ ~ ~
execute as @s[tag=ab.rod.laser_damage] at @s run particle dust{color:16711680,scale:0.5} ~ ~ ~ 0.5 0.5 0.5 0.05 1 force @a
execute as @s[tag=ab.rod.laser_damage] at @s positioned ~ ~-1 ~ run damage @n[distance=..1,type=!#ab:non_mob] 3 on_fire
execute as @s[tag=ab.rod.laser_damage] at @s positioned ~ ~-1 ~ run kill @n[distance=..1,type=snowball]
execute as @s[tag=ab.rod.laser_damage] at @s positioned ~ ~-1 ~ run kill @n[distance=..1,type=small_fireball]


execute as @s[tag=ab.rod.laser_damage] at @s if entity @n[distance=0.1..3,tag=ab.rod.laser_damage] run say 1
execute as @s[tag=ab.rod.laser_damage] at @s if entity @n[distance=0.1..3,tag=ab.rod.laser_damage] as @e[distance=..3,tag=ab.rod.laser_damage] run function ab:rod/block/redstone_laser_return with entity @s data

execute as @s[tag=ab.rod.laser_damage] at @s if score @s ab.laser_length matches 50.. run function ab:rod/block/redstone_laser_return with entity @s data
execute as @s[tag=ab.rod.laser_damage] at @s unless block ~ ~ ~ #air run function ab:rod/block/redstone_laser_return with entity @s data
execute as @s[tag=ab.rod.laser_damage] at @s unless entity @a[distance=..50] run function ab:rod/block/redstone_laser_return with entity @s data
execute as @n[tag=ab.rod.laser_damage] at @s if entity @s run function ab:rod/block/redstone_laser_damage