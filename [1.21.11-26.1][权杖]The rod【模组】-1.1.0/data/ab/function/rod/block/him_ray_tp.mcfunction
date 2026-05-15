data modify storage ab him.tper set from entity @n[tag=ab.him_tper] data.UUID
execute store result score @s ab.temp run data modify storage ab him.tper set from entity @s UUID
execute if score @s ab.temp matches 0 run tp @s @n[tag=ab.him_tper]
execute if score @s ab.temp matches 0 run tp ^ ^1 ^-1