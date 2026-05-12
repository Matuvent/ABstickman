
summon snowball ^ ^ ^3 {Tags:[ab.rod.snowball,ab.reg]}
execute as @e[tag=ab.reg,tag=ab.rod.snowball] run tp @s ^ ^ ^2.5 facing ^ ^ ^4


execute store result score @s ab.x run data get entity @s Pos[0] 100
execute store result score @s ab.y run data get entity @s Pos[1] 100
execute store result score @s ab.z run data get entity @s Pos[2] 100

execute as @n[tag=ab.reg,type=snowball] store result score @s ab.x run data get entity @s Pos[0] 100
execute as @n[tag=ab.reg,type=snowball] store result score @s ab.y run data get entity @s Pos[1] 100
execute as @n[tag=ab.reg,type=snowball] store result score @s ab.z run data get entity @s Pos[2] 100

execute as @n[tag=ab.reg,type=snowball] store result score @s ab.temp run random value -30..30
execute as @n[tag=ab.reg,type=snowball] run scoreboard players operation @s ab.x += @s ab.temp

execute as @n[tag=ab.reg,type=snowball] store result score @s ab.temp run random value -30..30
execute as @n[tag=ab.reg,type=snowball] run scoreboard players operation @s ab.y += @s ab.temp

execute as @n[tag=ab.reg,type=snowball] store result score @s ab.temp run random value -30..30
execute as @n[tag=ab.reg,type=snowball] run scoreboard players operation @s ab.z += @s ab.temp

scoreboard players add @s ab.y 150
scoreboard players operation @n[tag=ab.reg,type=snowball] ab.x -= @s ab.x
scoreboard players operation @n[tag=ab.reg,type=snowball] ab.y -= @s ab.y
scoreboard players operation @n[tag=ab.reg,type=snowball] ab.z -= @s ab.z

execute store result storage ab small_fireball.x double 0.01 run scoreboard players get @n[tag=ab.reg,type=snowball] ab.x
execute store result storage ab small_fireball.y double 0.01 run scoreboard players get @n[tag=ab.reg,type=snowball] ab.y
execute store result storage ab small_fireball.z double 0.01 run scoreboard players get @n[tag=ab.reg,type=snowball] ab.z

execute as @n[tag=ab.reg,type=snowball] run function ab:rod/block/shoot with storage ab small_fireball
#execute as @n[tag=ab.reg,type=small_fireball] run tp @s ^ ^ ^2.5 facing ^ ^ ^3
tag @n[tag=ab.reg,type=snowball] remove ab.reg
