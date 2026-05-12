advancement revoke @s only ab:minecraft_rc
scoreboard players add @s ab.minecraft_rc_time 3
execute if score @s ab.minecraft_rc_time matches 3 positioned ~ ~1.5 ~ positioned ^ ^ ^3 run function ab:rod/minecraft/start
execute store result entity @n[tag=ab.minecraft_iron_block] data.r int 0.1 run scoreboard players get @s ab.minecraft_rc_time
#function ab:minecraft/tp with entity @n[tag=ab.minecraft_iron_block] data
execute as @e[tag=ab.iron_block_display] at @s run function ab:rod/minecraft/biggen with entity @n[tag=ab.minecraft_iron_block] data