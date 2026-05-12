
summon marker ~ ~ ~ {Tags:[ab.rod.small_note,ab.reg,ab.rod.note,ab.rod.magiced]}
execute as @e[tag=ab.reg,tag=ab.rod.small_note] run tp @s ^ ^ ^1.5 facing ^ ^ ^2

execute as @e[tag=ab.reg,tag=ab.rod.small_note] store result entity @s data.note_count int 1 run random value 0..24

tag @e[tag=ab.reg,tag=ab.rod.small_note] remove ab.reg
playsound block.note_block.bit player @a