
summon item_display ~ ~ ~ {Tags:[ab.rod.book,ab.reg],item:{id:book}}
execute as @e[tag=ab.reg,tag=ab.rod.book] run tp @s ^ ^ ^1 facing ^ ^ ^2
execute as @e[tag=ab.reg,tag=ab.rod.book] store result entity @s data.x_r int 1 run random value -15..15
execute as @e[tag=ab.reg,tag=ab.rod.book] store result entity @s data.y_r int 1 run random value -15..15
execute as @e[tag=ab.reg,tag=ab.rod.book] at @s run function ab:rod/block/rotated with entity @s data
tag @e[tag=ab.reg,tag=ab.rod.book] remove ab.reg
summon item_display ~ ~ ~ {Tags:[ab.rod.book,ab.reg],item:{id:paper}}
execute as @e[tag=ab.reg,tag=ab.rod.book] run tp @s ^ ^ ^1 facing ^ ^ ^2
execute as @e[tag=ab.reg,tag=ab.rod.book] store result entity @s data.x_r int 1 run random value -15..15
execute as @e[tag=ab.reg,tag=ab.rod.book] store result entity @s data.y_r int 1 run random value -15..15
execute as @e[tag=ab.reg,tag=ab.rod.book] at @s run function ab:rod/block/rotated with entity @s data
tag @e[tag=ab.reg,tag=ab.rod.book] remove ab.reg
summon item_display ~ ~ ~ {Tags:[ab.rod.book,ab.reg],item:{id:paper}}
execute as @e[tag=ab.reg,tag=ab.rod.book] run tp @s ^ ^ ^1 facing ^ ^ ^2
execute as @e[tag=ab.reg,tag=ab.rod.book] store result entity @s data.x_r int 1 run random value -15..15
execute as @e[tag=ab.reg,tag=ab.rod.book] store result entity @s data.y_r int 1 run random value -15..15
execute as @e[tag=ab.reg,tag=ab.rod.book] at @s run function ab:rod/block/rotated with entity @s data
tag @e[tag=ab.reg,tag=ab.rod.book] remove ab.reg
playsound block.chiseled_bookshelf.pickup player @a[distance=..16]