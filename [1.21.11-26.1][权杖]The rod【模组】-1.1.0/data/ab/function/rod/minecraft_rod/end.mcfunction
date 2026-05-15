
execute positioned ~ ~1.5 ~ run summon marker ^ ^ ^4 {Tags:[ab.minecraft_rod_obsidian_end,ab.reg]}
execute store result score @n[tag=ab.minecraft_rod_obsidian] ab.minecraft_rod_rc_time run scoreboard players get @s ab.minecraft_rod_rc_time

tag @e[tag=ab.minecraft_rod_obsidian] add start
execute as @n[tag=ab.minecraft_rod_obsidian] at @s run tp @s ~ ~ ~ facing entity @n[tag=ab.minecraft_rod_obsidian_end]
kill @n[tag=ab.minecraft_rod_obsidian_end]
scoreboard players set @s ab.minecraft_rod_rc_time 0
scoreboard players set @s ab.minecraft_rod_rc_time1 0
