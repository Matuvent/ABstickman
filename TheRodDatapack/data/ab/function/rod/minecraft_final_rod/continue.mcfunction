#summon marker ^ ^ ^4 {Tags:[ab.final_ray,ab.reg]}
#execute as @n[tag=ab.final_ray,tag=ab.reg] run tp @s ^ ^ ^4 facing ^ ^ ^10
#tag @n[tag=ab.final_ray,tag=ab.reg] remove ab.reg
#execute store result score @s ab.r1 run data get entity @s Rotation[0]
#execute store result score @s ab.r2 run data get entity @s Rotation[1]
#execute store result score @n[tag=!ab.final_ray,tag=!ab.final_ray_core] ab.r1 run data get entity @n[tag=!ab.final_ray,tag=!ab.final_ray_core] Rotation[0]
#execute store result score @n[tag=!ab.final_ray,tag=!ab.final_ray_core] ab.r2 run data get entity @n[tag=!ab.final_ray,tag=!ab.final_ray_core] Rotation[1]
#execute if score @s ab.r1 < @n[tag=!ab.final_ray,tag=!ab.final_ray_core] ab.r1 positioned as @n[tag=!ab.final_ray,tag=!ab.final_ray_core] run tp @s ~ ~ ~ ~5 ~
#execute if score @s ab.r1 > @n[tag=!ab.final_ray,tag=!ab.final_ray_core] ab.r1 positioned as @n[tag=!ab.final_ray,tag=!ab.final_ray_core] run tp @s ~ ~ ~ ~-5 ~
#execute if score @s ab.r2 < @n[tag=!ab.final_ray,tag=!ab.final_ray_core] ab.r2 positioned as @n[tag=!ab.final_ray,tag=!ab.final_ray_core] run tp @s ~ ~ ~ ~ ~5
#execute if score @s ab.r2 > @n[tag=!ab.final_ray,tag=!ab.final_ray_core] ab.r2 positioned as @n[tag=!ab.final_ray,tag=!ab.final_ray_core] run tp @s ~ ~ ~ ~ ~-5
#say 1
#execute as @n[tag=ab.light] run scoreboard players set @s ab.live_time 0
#execute as @n[tag=ab.light] at @p[tag=!ab.final_ray,tag=!ab.final_ray_core,tag=!ab.light] positioned ~ ~1.5 ~ run tp @s ^ ^ ^4 facing ^ ^ ^5
execute at @p positioned ~ ~1.5 ~ run tp @s ^ ^ ^1 facing ^ ^ ^10
execute positioned ^ ^ ^3 run function ab:rod/minecraft_final_rod/final_ray
execute as @p if entity @s[x_rotation=-90..-85] run scoreboard players add @s ab.break_time 2
execute as @p if entity @s[x_rotation=-90..-85] unless score @s ab.break_time matches 100.. run tellraw @s [{"text":"已进入毁灭世界模式，坏档不可逆进度已达到：",color:"dark_red"},{score:{name:"@s",objective:"ab.break_time"}},{"text":"%，不要在正常存档中开启该模式！"}]
execute as @p if score @s[x_rotation=-90..-85] ab.break_time matches 100 run tellraw @s [{text:"是否选择毁灭世界，如果你完全不懂如何修复，那么大概这个存档永远也救不回来了："},{text:"yes",color:"green",click_event:{action:"run_command",command:"trigger ab.break_anwser set 1"}}]

