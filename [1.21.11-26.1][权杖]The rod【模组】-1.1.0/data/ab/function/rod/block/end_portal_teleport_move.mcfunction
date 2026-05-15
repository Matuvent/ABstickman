tp @e[tag=ab.teleport] ^ ^ ^1 facing ^ ^ ^5

execute store result score @s ab.x run data get entity @s Pos[0] 100
execute store result score @s ab.y run data get entity @s Pos[1] 100
execute store result score @s ab.z run data get entity @s Pos[2] 100

execute as @n[tag=ab.teleport] store result score @s ab.x run data get entity @s Pos[0] 100
execute as @n[tag=ab.teleport] store result score @s ab.y run data get entity @s Pos[1] 100
execute as @n[tag=ab.teleport] store result score @s ab.z run data get entity @s Pos[2] 100

scoreboard players operation @n[tag=ab.teleport] ab.x -= @s ab.x
scoreboard players operation @n[tag=ab.teleport] ab.y -= @s ab.y
scoreboard players operation @n[tag=ab.teleport] ab.z -= @s ab.z

execute store result storage ab teleport.x double 0.01 run scoreboard players get @n[tag=ab.teleport] ab.x
execute store result storage ab teleport.y double 0.01 run scoreboard players get @n[tag=ab.teleport] ab.y
execute store result storage ab teleport.z double 0.01 run scoreboard players get @n[tag=ab.teleport] ab.z

execute as @n[tag=ab.teleport] run function ab:rod/block/shoot with storage ab teleport