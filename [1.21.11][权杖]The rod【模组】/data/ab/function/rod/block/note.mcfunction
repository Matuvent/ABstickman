tp ^ ^ ^1
execute if entity @e[tag=ab.rod.emerald_marker,distance=..1.5] run kill
execute as @s[tag=ab.rod.small_note] run function ab:rod/block/note_particle with entity @s data
execute as @s[tag=ab.rod.big_note] positioned ^ ^0.5 ^ run function ab:rod/block/note_particle with entity @s data
execute as @s[tag=ab.rod.big_note] positioned ^ ^0.05 ^ run function ab:rod/block/note_particle with entity @s data
execute as @s[tag=ab.rod.big_note] positioned ^ ^-0.45 ^ run function ab:rod/block/note_particle with entity @s data
execute as @s[tag=ab.rod.big_note] positioned ^ ^-0.95 ^ run function ab:rod/block/note_particle with entity @s data
execute as @s[tag=ab.rod.big_note] positioned ^ ^-0.95 ^ run function ab:rod/block/note_particle with entity @s data
execute as @s[tag=ab.rod.big_note] unless entity @e[tag=ab.rod.stave,distance=..10] run kill

execute as @s[tag=ab.rod.small_note] as @s positioned ~ ~-1 ~ run damage @n[distance=..1,tag=!ab.rod.stave,tag=!ab.rod.note] 3 magic
execute as @s[tag=ab.rod.small_note] as @s positioned ~ ~-1 ~ if entity @n[distance=..1,tag=!ab.rod.stave,tag=!ab.rod.note] run kill

execute as @s[tag=ab.rod.big_note] as @s positioned ~ ~-1 ~ run damage @n[distance=..2,tag=!ab.rod.stave,tag=!ab.rod.note] 9 magic
execute as @s[tag=ab.rod.big_note] as @s positioned ~ ~-1 ~ if entity @n[distance=..2,tag=!ab.rod.stave,tag=!ab.rod.note] run kill
scoreboard players add @s ab.live_time 1
kill @s[scores={ab.live_time=100..}]
