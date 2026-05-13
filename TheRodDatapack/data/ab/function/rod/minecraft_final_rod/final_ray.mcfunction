execute positioned ~ ~-1 ~ as @e[distance=..2.5,type=!#ab:non_mob] positioned ^ ^ ^-1 unless entity @s in ab:darkness run spreadplayers 0.0 0.0 1 100 under 115 false @s

execute positioned ^-3 ^0 ^0 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^-2 ^-2 ^-1 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^-2 ^-2 ^1 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^-2 ^-1 ^-2 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^-2 ^-1 ^2 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^-2 ^1 ^-2 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^-2 ^1 ^2 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^-2 ^2 ^-1 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^-2 ^2 ^1 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^-1 ^-2 ^-2 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^-1 ^-2 ^2 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^-1 ^2 ^-2 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^-1 ^2 ^2 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^0 ^-3 ^0 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^0 ^0 ^-3 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^0 ^0 ^3 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^0 ^3 ^0 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^1 ^-2 ^-2 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^1 ^-2 ^2 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^1 ^2 ^-2 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^1 ^2 ^2 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^2 ^-2 ^-1 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^2 ^-2 ^1 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^2 ^-1 ^-2 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^2 ^-1 ^2 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^2 ^1 ^-2 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^2 ^1 ^2 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^2 ^2 ^-1 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^2 ^2 ^1 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
execute positioned ^3 ^0 ^0 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air

execute positioned ^ ^ ^1 if entity @a[distance=..100] run function ab:rod/minecraft_final_rod/final_ray