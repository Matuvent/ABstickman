
summon item_display ~ ~ ~ {Tags:[ab.rod.campfire_fire,ab.reg,ab.rod.magiced]}
execute as @e[tag=ab.reg,tag=ab.rod.campfire_fire] run tp @s ^ ^ ^2 facing ^ ^ ^3
execute as @e[tag=ab.reg,tag=ab.rod.campfire_fire] store result entity @s data.x_r int 1 run random value -15..15
execute as @e[tag=ab.reg,tag=ab.rod.campfire_fire] store result entity @s data.y_r int 1 run random value -15..15
execute as @e[tag=ab.reg,tag=ab.rod.campfire_fire] at @s run function ab:rod/block/rotated with entity @s data
tag @e[tag=ab.reg,tag=ab.rod.campfire_fire] remove ab.reg