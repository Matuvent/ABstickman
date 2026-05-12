
summon item_display ~ ~ ~ {Tags:[ab.rod.brewing_effect,ab.reg,ab.rod.magiced]}
execute as @e[tag=ab.reg,tag=ab.rod.brewing_effect] run tp @s ^ ^ ^2 facing ^ ^ ^3
execute as @e[tag=ab.reg,tag=ab.rod.brewing_effect] store result entity @s data.x_r int 1 run random value -15..15
execute as @e[tag=ab.reg,tag=ab.rod.brewing_effect] store result entity @s data.y_r int 1 run random value -15..15
execute as @e[tag=ab.reg,tag=ab.rod.brewing_effect] at @s run function ab:rod/block/rotated with entity @s data

execute as @e[tag=ab.reg,tag=ab.rod.brewing_effect] store result entity @s data.color.r float 0.01 run random value 0..100
execute as @e[tag=ab.reg,tag=ab.rod.brewing_effect] store result entity @s data.color.g float 0.01 run random value 0..100
execute as @e[tag=ab.reg,tag=ab.rod.brewing_effect] store result entity @s data.color.b float 0.01 run random value 0..100

tag @e[tag=ab.reg,tag=ab.rod.brewing_effect] remove ab.reg