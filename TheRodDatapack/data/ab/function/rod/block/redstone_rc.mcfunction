scoreboard players add @s ab.laser_time 2
playsound entity.creeper.primed player @a[distance=..50] ~ ~ ~ 0.5 1 0.2
#execute if score @s ab.laser_time matches 2 run tag @s add ab.lasering
#execute if score @s ab.laser_time matches 2 run say 镭射开始


kill @e[tag=ab.rod.laser_damage]
$summon marker ~ ~ ~ {Tags:[ab.rod.laser_damage,ab.reg,ab.rod.magiced],data:{owner:$(UUID)}}
#execute as @e[tag=ab.rod.laser_damage] run tellraw @a {nbt:"data",entity:"@s"}
execute as @n[tag=ab.rod.laser_damage,tag=ab.reg] run tp @s ^ ^ ^1.5 facing ^ ^ ^3
scoreboard players set @s ab.laser_length 0
execute as @e[tag=ab.rod.laser_damage] at @s run function ab:rod/block/redstone_laser_damage

$execute if score @s ab.laser_time matches 2 run summon item_display ~ ~-1.5 ~ {item:{id:firework_star,components:{item_model:"ab:laser"}},brightness:{block:15,sky:15},Tags:[ab.rod.laser,ab.reg],transformation:[\
1,0,0,0,\
0,1,0,0,\
0,0,1,0,\
0,0,0,1],data:{owner:$(UUID)}}
data modify entity @n[tag=ab.rod.laser] start_interpolation set value 1
data modify entity @n[tag=ab.rod.laser] interpolation_duration set value 1
execute as @n[tag=ab.rod.laser] run tp @s ^ ^ ^1.5 facing ^ ^ ^3
$execute as @e[tag=ab.rod.laser] store result entity @s data.length int 1 run data get storage ab laser_length."$(UUID)"
execute as @e[tag=ab.rod.laser] run function ab:rod/block/redstone_shoot_marco with entity @s data
#execute as @e[tag=ab.rod.laser] run tellraw @a {nbt:"data.length",entity:"@s"}

tag @e[tag=ab.reg] remove ab.reg
