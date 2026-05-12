scoreboard players reset @s ab.temp
execute store result score @s ab.temp run random value 1..4
execute if score @s ab.temp matches 1 run function ab:rod/block/brewing_stand_potion {effect:"long_slowness"}
execute if score @s ab.temp matches 2 run function ab:rod/block/brewing_stand_potion {effect:"strong_harming"}
execute if score @s ab.temp matches 3 run function ab:rod/block/brewing_stand_potion {effect:"strong_poison"}
execute if score @s ab.temp matches 4 run function ab:rod/block/brewing_stand_potion {effect:"long_weakness"}