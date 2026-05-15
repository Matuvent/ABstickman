
kill @s[tag=ab.obsidian_display]
execute align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:[ab.obsidian_display]}
execute as @n[tag=ab.obsidian_display] positioned as @s run tp @s ~ ~ ~ facing ^ ^ ^3
setblock ~ ~ ~ obsidian
