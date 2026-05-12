
summon item_display ~ ~ ~ {Tags:[ab.rod.bee,ab.reg],item:{id:firework_star,components:{item_model:"ab:bee"}}}
execute as @e[tag=ab.reg,tag=ab.rod.bee] store result score @s ab.rod.random run random value 1..10
execute as @e[tag=ab.reg,tag=ab.rod.bee] if score @s ab.rod.random matches 10 run tag @s add ab.rod.creeper_bee
execute as @e[tag=ab.rod.creeper_bee] run data modify entity @s item.components."minecraft:item_model" set value "ab:creeper_bee"
execute as @e[tag=ab.reg,tag=ab.rod.bee] run tp @s ^ ^ ^2 facing ^ ^ ^2.5
tag @e[tag=ab.reg,tag=ab.rod.bee] remove ab.reg
playsound entity.bee.loop player @a[distance=..16]