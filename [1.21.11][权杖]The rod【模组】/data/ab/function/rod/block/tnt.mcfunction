scoreboard players set @s ab.rod.shoot_time 0

execute positioned ~ ~ ~ run summon tnt ^ ^ ^1 {Tags:["ab.reg"],fuse:30}
execute store result score @s ab.x run data get entity @s Pos[0] 100
execute store result score @s ab.y run data get entity @s Pos[1] 100
execute store result score @s ab.z run data get entity @s Pos[2] 100

execute as @n[tag=ab.reg,type=tnt] store result score @s ab.x run data get entity @s Pos[0] 100
execute as @n[tag=ab.reg,type=tnt] store result score @s ab.y run data get entity @s Pos[1] 100
execute as @n[tag=ab.reg,type=tnt] store result score @s ab.z run data get entity @s Pos[2] 100

scoreboard players add @s ab.y 150
scoreboard players operation @n[tag=ab.reg,type=tnt] ab.x -= @s ab.x
scoreboard players operation @n[tag=ab.reg,type=tnt] ab.y -= @s ab.y
scoreboard players operation @n[tag=ab.reg,type=tnt] ab.z -= @s ab.z

execute store result storage ab tnt.x double 0.01 run scoreboard players get @n[tag=ab.reg,type=tnt] ab.x
execute store result storage ab tnt.y double 0.01 run scoreboard players get @n[tag=ab.reg,type=tnt] ab.y
execute store result storage ab tnt.z double 0.01 run scoreboard players get @n[tag=ab.reg,type=tnt] ab.z

execute as @n[tag=ab.reg,type=tnt] run function ab:rod/block/shoot with storage ab tnt
#execute as @n[tag=ab.reg,type=tnt] run tp @s ^ ^ ^2.5 facing ^ ^ ^3
tag @n[tag=ab.reg,type=tnt] remove ab.reg
playsound block.fire.extinguish