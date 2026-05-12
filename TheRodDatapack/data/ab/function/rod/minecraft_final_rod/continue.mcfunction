#summon marker ^ ^ ^4 {Tags:[ab.final_ray,ab.reg]}
#execute as @n[tag=ab.final_ray,tag=ab.reg] run tp @s ^ ^ ^4 facing ^ ^ ^10
tag @n[tag=ab.final_ray,tag=ab.reg] remove ab.reg
#execute store result score @s ab.r1 run data get entity @s Rotation[0]
#execute store result score @s ab.r2 run data get entity @s Rotation[1]
#execute store result score @n[tag=!ab.final_ray,tag=!ab.final_ray_core] ab.r1 run data get entity @n[tag=!ab.final_ray,tag=!ab.final_ray_core] Rotation[0]
#execute store result score @n[tag=!ab.final_ray,tag=!ab.final_ray_core] ab.r2 run data get entity @n[tag=!ab.final_ray,tag=!ab.final_ray_core] Rotation[1]
#execute if score @s ab.r1 < @n[tag=!ab.final_ray,tag=!ab.final_ray_core] ab.r1 positioned as @n[tag=!ab.final_ray,tag=!ab.final_ray_core] run tp @s ~ ~ ~ ~5 ~
#execute if score @s ab.r1 > @n[tag=!ab.final_ray,tag=!ab.final_ray_core] ab.r1 positioned as @n[tag=!ab.final_ray,tag=!ab.final_ray_core] run tp @s ~ ~ ~ ~-5 ~
#execute if score @s ab.r2 < @n[tag=!ab.final_ray,tag=!ab.final_ray_core] ab.r2 positioned as @n[tag=!ab.final_ray,tag=!ab.final_ray_core] run tp @s ~ ~ ~ ~ ~5
#execute if score @s ab.r2 > @n[tag=!ab.final_ray,tag=!ab.final_ray_core] ab.r2 positioned as @n[tag=!ab.final_ray,tag=!ab.final_ray_core] run tp @s ~ ~ ~ ~ ~-5
#say 1
execute as @n[tag=ab.light] run scoreboard players set @s ab.live_time 0
execute as @n[tag=ab.light] at @n[tag=!ab.final_ray,tag=!ab.final_ray_core,tag=!ab.light] positioned ~ ~1.5 ~ run tp @s ^ ^ ^4 facing ^ ^ ^5
execute at @n[tag=!ab.final_ray,tag=!ab.final_ray_core,tag=!ab.light] positioned ~ ~1.5 ~ run tp @s ^ ^ ^1 facing ^ ^ ^10
execute positioned ^ ^ ^3 run function ab:rod/minecraft_final_rod/final_ray