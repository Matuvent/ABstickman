execute store result score @s ab.rod.random run random value 5..16
execute if score @s ab.rod.random matches 5 run setblock ^ ^ ^2.5 cobblestone_wall keep
execute if score @s ab.rod.random matches 6 run setblock ^ ^ ^2.5 cobblestone keep

execute if score @s ab.rod.random matches 7 run setblock ^ ^ ^2.5 cobblestone_slab[type=bottom] keep
execute if score @s ab.rod.random matches 8 run setblock ^ ^ ^2.5 cobblestone_slab[type=top] keep

execute if score @s ab.rod.random matches 9 run setblock ^ ^ ^2.5 cobblestone_stairs[facing=north,half=bottom] keep
execute if score @s ab.rod.random matches 10 run setblock ^ ^ ^2.5 cobblestone_stairs[facing=south,half=bottom] keep
execute if score @s ab.rod.random matches 11 run setblock ^ ^ ^2.5 cobblestone_stairs[facing=east,half=bottom] keep
execute if score @s ab.rod.random matches 12 run setblock ^ ^ ^2.5 cobblestone_stairs[facing=west,half=bottom] keep
execute if score @s ab.rod.random matches 13 run setblock ^ ^ ^2.5 cobblestone_stairs[facing=north,half=top] keep
execute if score @s ab.rod.random matches 14 run setblock ^ ^ ^2.5 cobblestone_stairs[facing=south,half=top] keep
execute if score @s ab.rod.random matches 15 run setblock ^ ^ ^2.5 cobblestone_stairs[facing=east,half=top] keep
execute if score @s ab.rod.random matches 16 run setblock ^ ^ ^2.5 cobblestone_stairs[facing=west,half=top] keep

scoreboard players set @s ab.rod.random -1