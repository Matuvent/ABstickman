execute unless score @s ab.live_time matches 0.. run scoreboard players set @s ab.live_time 0

scoreboard players add @s ab.live_time 1
execute store result entity @s data.r float 0.25 run scoreboard players get @s ab.live_time
execute if score @s ab.live_time matches ..100 as @e[tag=ab.black_hole_marker] at @s run function ab:rod/minecraft_rod/block_spread with entity @n[tag=ab.black_hole] data
execute if score @s ab.live_time matches ..100 run particle end_rod ~ ~ ~ 12.5 12.5 12.5 0 10 force @a
execute as @e[distance=..10] run damage @s 100 out_of_world
execute if score @s ab.live_time matches 100 run kill @e[tag=ab.black_hole_marker]
execute if score @s ab.live_time matches 100 run data modify entity @n[tag=ab.black_hole] interpolation_duration set value 7

execute if score @s ab.live_time matches 100 run data modify entity @s transformation set value [0,0,0,0 ,0,0,0,0 ,0,0,0,0 ,0,0,0,0.1]

execute if score @s ab.live_time matches 110.. run summon tnt ~ ~ ~ {fuse:-1,explosion_power:128}
kill @s[scores={ab.live_time=110..}]