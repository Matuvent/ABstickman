data modify storage ab iron_chain.UUID set from entity @n[tag=ab.rod.iron_chain_end] data.UUID
data modify storage ab iron_chain.num set from entity @n[tag=ab.rod.iron_chain_end] data.num

#tellraw @a [{nbt:"data.UUID",entity: "@s"},{nbt:"data.num",entity: "@s"}]
execute store success score @s ab.temp run data modify storage ab iron_chain.UUID set from entity @s data.UUID
execute store success score @s ab.temp1 run data modify storage ab iron_chain.num set from entity @s data.num
kill @s[scores={ab.temp=0,ab.temp1=0}]
