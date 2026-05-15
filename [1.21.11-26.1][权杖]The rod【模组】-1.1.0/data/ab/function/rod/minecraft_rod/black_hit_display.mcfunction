execute if entity @n[tag=ab.minecraft_rod_hited,distance=..1] run tp @s @n[tag=ab.minecraft_rod_hited]
scoreboard players add @s ab.live_time 1

#execute as @s[scores={ab.live_time=3..}] at @s run function ab:rod/minecraft_rod/transf_macro with entity @s data
#execute as @s[scores={ab.live_time=3..}] at @s run data modify entity @s interpolation_duration set value 5
data modify entity @s[scores={ab.live_time=3..}] transformation set value [0,0,0,0, 0,100,0,0, 0,0,0,0 ,0,0,0,1]
kill @s[scores={ab.live_time=8..},tag=!ab.black_block]
kill @s[scores={ab.live_time=20..}]