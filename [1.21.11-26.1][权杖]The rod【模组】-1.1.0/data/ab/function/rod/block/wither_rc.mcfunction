
summon wither_skull ^ ^ ^3 {Tags:[ab.rod.wither_skull,ab.reg,ab.rod.magiced]}
execute as @e[tag=ab.reg,tag=ab.rod.wither_skull] store result score @s ab.rod.random run random value 1..10
execute as @e[tag=ab.reg,tag=ab.rod.wither_skull] if score @s ab.rod.random matches 10 run data modify entity @s dangerous set value true
execute as @e[tag=ab.reg,tag=ab.rod.wither_skull] run tp @s ^ ^ ^3 facing ^ ^ ^4
execute store result score @s ab.x run data get entity @s Pos[0] 100
execute store result score @s ab.y run data get entity @s Pos[1] 100
execute store result score @s ab.z run data get entity @s Pos[2] 100

execute as @n[tag=ab.reg,type=wither_skull] store result score @s ab.x run data get entity @s Pos[0] 100
execute as @n[tag=ab.reg,type=wither_skull] store result score @s ab.y run data get entity @s Pos[1] 100
execute as @n[tag=ab.reg,type=wither_skull] store result score @s ab.z run data get entity @s Pos[2] 100

scoreboard players add @s ab.y 150
scoreboard players operation @n[tag=ab.reg,type=wither_skull] ab.x -= @s ab.x
scoreboard players operation @n[tag=ab.reg,type=wither_skull] ab.y -= @s ab.y
scoreboard players operation @n[tag=ab.reg,type=wither_skull] ab.z -= @s ab.z

execute store result storage ab small_fireball.x double 0.01 run scoreboard players get @n[tag=ab.reg,type=wither_skull] ab.x
execute store result storage ab small_fireball.y double 0.01 run scoreboard players get @n[tag=ab.reg,type=wither_skull] ab.y
execute store result storage ab small_fireball.z double 0.01 run scoreboard players get @n[tag=ab.reg,type=wither_skull] ab.z

execute as @n[tag=ab.reg,type=wither_skull] run function ab:rod/block/shoot with storage ab small_fireball
#execute as @n[tag=ab.reg,type=small_fireball] run tp @s ^ ^ ^2.5 facing ^ ^ ^3
tag @n[tag=ab.reg,type=wither_skull] remove ab.reg