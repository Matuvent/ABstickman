execute as @s[tag=ab.rod.bee_ray] at @s run tp ^ ^ ^1
#execute as @s[tag=ab.rod.bee_ray] at @s run tellraw @a {score:{name:"@s",objective:"ab.laser_length"}}
#execute as @s[tag=ab.rod.bee_ray] at @s run particle end_rod ~ ~ ~
execute as @s[tag=ab.rod.bee_ray] at @s run particle dust{color:16763160,scale:1} ~ ~ ~ 0.25 0.25 0.25 0.01 1 force @a
execute as @s[tag=ab.rod.bee_ray] run scoreboard players set @s ab.temp 0
execute as @s[tag=ab.rod.bee_ray] at @s if entity @e[type=!#ab:non_mob,distance=..2] run function ab:rod/block/bee_nest_ray_return
execute as @s[tag=ab.rod.bee_ray] at @s unless block ~ ~ ~ #air if score @s ab.temp matches 0 run function ab:rod/block/bee_nest_ray_return
execute as @s[tag=ab.rod.bee_ray] at @s unless entity @a[distance=..50] run kill
execute as @n[tag=ab.rod.bee_ray] at @s if entity @s run function ab:rod/block/bee_nest_ray