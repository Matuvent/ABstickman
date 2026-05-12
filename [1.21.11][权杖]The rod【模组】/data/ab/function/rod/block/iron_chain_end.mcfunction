tag @s add ab.rod.iron_chain_end
#tellraw @a [{nbt:"data.UUID",entity: "@s"},{nbt:"data.num",entity: "@s"}]
execute as @e[tag=ab.rod.iron_chain_display] at @s at @s run function ab:rod/block/iron_chain_display_kill
tag @s remove ab.rod.iron_chain_end
kill