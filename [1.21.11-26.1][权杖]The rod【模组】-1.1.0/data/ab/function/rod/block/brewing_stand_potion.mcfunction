
$summon splash_potion ^ ^ ^3 {Tags:[ab.rod.splash_potion,ab.reg,ab.rod.magiced],Item:{id:splash_potion,components:{potion_contents:{potion:$(effect)}}}}
execute as @e[tag=ab.reg,tag=ab.rod.splash_potion] run tp @s ^ ^ ^2.5 facing ^ ^ ^4

execute store result score @s ab.x run data get entity @s Pos[0] 100
execute store result score @s ab.y run data get entity @s Pos[1] 100
execute store result score @s ab.z run data get entity @s Pos[2] 100

execute as @n[tag=ab.reg,type=splash_potion] store result score @s ab.x run data get entity @s Pos[0] 100
execute as @n[tag=ab.reg,type=splash_potion] store result score @s ab.y run data get entity @s Pos[1] 100
execute as @n[tag=ab.reg,type=splash_potion] store result score @s ab.z run data get entity @s Pos[2] 100

scoreboard players add @s ab.y 150
scoreboard players operation @n[tag=ab.reg,type=splash_potion] ab.x -= @s ab.x
scoreboard players operation @n[tag=ab.reg,type=splash_potion] ab.y -= @s ab.y
scoreboard players operation @n[tag=ab.reg,type=splash_potion] ab.z -= @s ab.z

execute store result storage ab splash_potion.x double 0.005 run scoreboard players get @n[tag=ab.reg,type=splash_potion] ab.x
execute store result storage ab splash_potion.y double 0.005 run scoreboard players get @n[tag=ab.reg,type=splash_potion] ab.y
execute store result storage ab splash_potion.z double 0.005 run scoreboard players get @n[tag=ab.reg,type=splash_potion] ab.z

execute as @n[tag=ab.reg,type=splash_potion] run function ab:rod/block/shoot with storage ab splash_potion
#execute as @n[tag=ab.reg,type=splash_potion] run tp @s ^ ^ ^2.5 facing ^ ^ ^3
tag @n[tag=ab.reg,type=splash_potion] remove ab.reg