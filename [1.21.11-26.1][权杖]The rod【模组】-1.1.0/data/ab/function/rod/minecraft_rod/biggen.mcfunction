#execute positioned ^1 ^ ^ if entity @n[tag=ab.obsidian_r,distance=..5] if entity @n[tag=ab.obsidian_r,distance=..10] unless entity @n[tag=ab.obsidian_display,distance=..0.5] run function ab:rod/minecraft_rod/obsidian_summon

$execute as @n positioned ^1 ^ ^ if entity @n[tag=ab.obsidian_r,distance=..$(r)] if entity @n[tag=ab.obsidian_r,distance=..20] unless entity @n[tag=ab.obsidian_display,distance=..0.5] if block ~ ~ ~ air run function ab:rod/minecraft_rod/obsidian_summon

$execute as @n positioned ^-1 ^ ^ if entity @n[tag=ab.obsidian_r,distance=..$(r)] if entity @n[tag=ab.obsidian_r,distance=..20] unless entity @n[tag=ab.obsidian_display,distance=..0.5] if block ~ ~ ~ air run function ab:rod/minecraft_rod/obsidian_summon

$execute as @n positioned ^ ^-1 ^ if entity @n[tag=ab.obsidian_r,distance=..$(r)] if entity @n[tag=ab.obsidian_r,distance=..20] unless entity @n[tag=ab.obsidian_displaydisplay,distance=..0.5] if block ~ ~ ~ air run function ab:rod/minecraft_rod/obsidian_summon

$execute as @n positioned ^ ^1 ^ if entity @n[tag=ab.obsidian_r,distance=..$(r)] if entity @n[tag=ab.obsidian_r,distance=..20] unless entity @n[tag=ab.obsidian_display,distance=..0.5] if block ~ ~ ~ air run function ab:rod/minecraft_rod/obsidian_summon
#say 1
#$execute as @e[tag=obsidian_display] at @s if entity @n[tag=ab.obsidian_r,distance=..$(r)] if entity @n[tag=ab.obsidian_r,distance=..10] as @e[tag=ab.obsidian_display] at @s run function ab:rod/minecraft_rod/biggen {r:$(r)}
kill @s