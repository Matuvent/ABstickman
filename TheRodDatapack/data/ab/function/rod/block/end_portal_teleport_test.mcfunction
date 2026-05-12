
data modify storage ab portal.UUID set from entity @n[tag=ab.import] data.UUID
data modify storage ab portal.num set from entity @n[tag=ab.import] data.num

scoreboard players set @s ab.temp 1
scoreboard players set @s ab.temp1 1
execute store success score @s ab.temp run data modify storage ab portal.UUID set from entity @s data.UUID
execute store success score @s ab.temp1 run data modify storage ab portal.num set from entity @s data.num
#tellraw @a [{score:{name:"@s",objective:"ab.temp"}},{score:{name:"@s",objective:"ab.temp1"}}]
