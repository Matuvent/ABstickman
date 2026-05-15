
scoreboard players add @s ab.minecraft_final_rod_rc_time 3
execute if score @s ab.minecraft_final_rod_rc_time matches 3 positioned ^ ^ ^3 run function ab:rod/minecraft_final_rod/start
time set 0