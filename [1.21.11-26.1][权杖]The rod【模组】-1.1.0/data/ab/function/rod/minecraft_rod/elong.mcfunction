tp ^ ^ ^1


scoreboard players remove @s ab.minecraft_rod_rc_time 3
execute if score @s ab.minecraft_rod_rc_time matches ..0 run kill @e[tag=ab.obsidian_display]
execute if score @s ab.minecraft_rod_rc_time matches ..0 run kill @e[tag=ab.obsidian_r]
kill @s[scores={ab.minecraft_rod_rc_time=..0}]

function ab:rod/minecraft_rod/obsidian_summon
execute run summon marker ~0.5 ~0.5 ~0.5 {Tags:[ab.obsidian_r]}
execute store result entity @n[tag=ab.obsidian_r] data.r int 0.03 run scoreboard players get @s ab.minecraft_rod_rc_time
#tellraw @a {entity:"@n[tag=ab.obsidian_r]",nbt:"data"}
execute positioned ~ ~-1 ~ run damage @n[distance=..2] 100 mob_attack at ~ ~ ~
execute positioned ~ ~-1 ~ run damage @n[distance=..2] 10 out_of_world at ~ ~ ~

execute as @e[tag=ab.obsidian_display] at @s run function ab:rod/minecraft_rod/biggen with entity @n[tag=ab.obsidian_r] data
