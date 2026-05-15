
summon marker ~ ~ ~ {Tags:[ab.rod.big_note,ab.reg,ab.rod.note,ab.rod.magiced]}
execute as @e[tag=ab.reg,tag=ab.rod.big_note] run tp @s ^ ^ ^1 facing ^ ^ ^2
execute as @e[tag=ab.reg,tag=ab.rod.big_note] store result entity @s data.note_count int 1 run random value 0..24
tag @e[tag=ab.reg,tag=ab.rod.big_note] remove ab.reg
playsound block.note_block.banjo player @a