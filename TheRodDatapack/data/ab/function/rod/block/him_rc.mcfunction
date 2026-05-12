
summon item_display ~ ~ ~ {Tags:[ab.rod.him_head,ab.reg,ab.rod.magiced],item:{id:firework_star,components:{item_model:"ab:him"}}}
execute as @e[tag=ab.reg,tag=ab.rod.him_head] run tp @s ^ ^ ^3 facing ^ ^ ^4
execute as @e[tag=ab.reg,tag=ab.rod.him_head] store result entity @s data.x_r int 1 run random value -15..15
execute as @e[tag=ab.reg,tag=ab.rod.him_head] store result entity @s data.y_r int 1 run random value -15..15
execute as @e[tag=ab.reg,tag=ab.rod.him_head] at @s run function ab:rod/block/rotated with entity @s data
tag @e[tag=ab.reg,tag=ab.rod.him_head] remove ab.reg