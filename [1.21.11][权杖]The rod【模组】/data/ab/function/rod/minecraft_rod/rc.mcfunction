
scoreboard players add @s ab.minecraft_rod_rc_time 3
execute if score @s ab.minecraft_rod_rc_time matches 3 positioned ^ ^ ^3 run function ab:rod/minecraft_rod/start
