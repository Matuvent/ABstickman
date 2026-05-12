execute positioned ~ ~ ~ run summon small_fireball ^ ^ ^2 {Tags:["ab.reg",ab.rod.magiced]}
execute store result score @s ab.x run data get entity @s Pos[0] 100
execute store result score @s ab.y run data get entity @s Pos[1] 100
execute store result score @s ab.z run data get entity @s Pos[2] 100

execute as @n[tag=ab.reg,type=small_fireball] store result score @s ab.x run data get entity @s Pos[0] 100
execute as @n[tag=ab.reg,type=small_fireball] store result score @s ab.y run data get entity @s Pos[1] 100
execute as @n[tag=ab.reg,type=small_fireball] store result score @s ab.z run data get entity @s Pos[2] 100

scoreboard players add @s ab.y 150
scoreboard players operation @n[tag=ab.reg,type=small_fireball] ab.x -= @s ab.x
scoreboard players operation @n[tag=ab.reg,type=small_fireball] ab.y -= @s ab.y
scoreboard players operation @n[tag=ab.reg,type=small_fireball] ab.z -= @s ab.z

execute store result storage ab small_fireball.x double 0.01 run scoreboard players get @n[tag=ab.reg,type=small_fireball] ab.x
execute store result storage ab small_fireball.y double 0.01 run scoreboard players get @n[tag=ab.reg,type=small_fireball] ab.y
execute store result storage ab small_fireball.z double 0.01 run scoreboard players get @n[tag=ab.reg,type=small_fireball] ab.z

execute as @n[tag=ab.reg,type=small_fireball] run function ab:rod/block/shoot with storage ab small_fireball
#execute as @n[tag=ab.reg,type=small_fireball] run tp @s ^ ^ ^2.5 facing ^ ^ ^3
tag @n[tag=ab.reg,type=small_fireball] remove ab.reg
playsound block.fire.extinguish