execute as @n[tag=ab.enchant_block] at @s align xyz run function ab:rod/block/lapis_setblock with entity @s item
execute as @n[tag=ab.enchant_block] at @s align xyz run data modify block ~ ~ ~ Items set from entity @s data.Items
kill @n[tag=ab.enchant_block]
scoreboard players set @s ab.temp 1
say 1
kill