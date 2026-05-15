scoreboard players add @s ab.live_time 1

execute if score @s[tag=ab.sword] ab.live_time matches 1..20 run tp @s ~ ~ ~ ~ ~9
execute if entity @s[tag=ab.sword] positioned ^ ^1 ^1 if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 50 mob_attack
execute if entity @s[tag=ab.sword] positioned ^ ^2 ^2 if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 50 mob_attack
execute if entity @s[tag=ab.sword] positioned ^ ^3 ^3 if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 50 mob_attack
execute if entity @s[tag=ab.sword] positioned ^ ^4 ^4 if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 50 mob_attack
execute if entity @s[tag=ab.sword] positioned ^ ^5 ^5 if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 50 mob_attack
execute if entity @s[tag=ab.sword] positioned ^ ^6 ^6 if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 50 mob_attack

execute if entity @s[tag=ab.mace] if score @s ab.live_time matches 1..20 run tp @s ~ ~ ~ ~ ~4.5
execute if entity @s[tag=ab.mace] positioned ^ ^6 ^ if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 mace_smash
execute if entity @s[tag=ab.mace] positioned ^ ^7 ^ if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 mace_smash
execute if entity @s[tag=ab.mace] positioned ^ ^8 ^ if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 mace_smash
execute if entity @s[tag=ab.mace] positioned ^ ^9 ^ if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 mace_smash
execute if entity @s[tag=ab.mace] positioned ^ ^10 ^ if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 mace_smash
execute if entity @s[tag=ab.mace] positioned ^ ^11 ^ if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 mace_smash
execute if entity @s[tag=ab.mace] positioned ^ ^12 ^ if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 mace_smash


execute if entity @s[tag=ab.axe] if score @s ab.live_time matches 1..20 run tp @s ~ ~ ~ ~ ~4.5
execute if entity @s[tag=ab.axe] positioned ^ ^6 ^ if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 mob_attack
execute if entity @s[tag=ab.axe] positioned ^ ^7 ^ if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 mob_attack
execute if entity @s[tag=ab.axe] positioned ^ ^8 ^ if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 mob_attack
execute if entity @s[tag=ab.axe] positioned ^ ^9 ^ if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 mob_attack
execute if entity @s[tag=ab.axe] positioned ^ ^10 ^ if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 mob_attack
execute if entity @s[tag=ab.axe] positioned ^ ^11 ^ if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 mob_attack
execute if entity @s[tag=ab.axe] positioned ^ ^12 ^ if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 mob_attack


execute if entity @s[tag=ab.trident] if score @s ab.live_time matches 1..20 run tp @s ^ ^ ^1
execute if entity @s[tag=ab.trident] positioned ^ ^ ^6 if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 trident
execute if entity @s[tag=ab.trident] positioned ^ ^ ^7 if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 trident
execute if entity @s[tag=ab.trident] positioned ^ ^ ^8 if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 trident
execute if entity @s[tag=ab.trident] positioned ^ ^ ^9 if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 trident
execute if entity @s[tag=ab.trident] positioned ^ ^ ^10 if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 trident
execute if entity @s[tag=ab.trident] positioned ^ ^ ^11 if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 trident
execute if entity @s[tag=ab.trident] positioned ^ ^ ^12 if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 100 trident

execute if score @s[tag=ab.bow] ab.live_time matches 1..20 run tp ^ ^ ^1
execute if score @s[tag=ab.bow] ab.live_time matches 3 run data modify entity @s item.components."minecraft:custom_model_data".strings set value [shoot]
execute if score @s[tag=ab.bow] ab.live_time matches 6 run data modify entity @s item.components."minecraft:custom_model_data".strings set value []
execute if score @s[tag=ab.bow] ab.live_time matches 6 run summon item_display ~ ~ ~ {item:{id:"firework_star",components:{item_model:"ab:weapon/arrow"}},Tags:[ab.netherite_weapon,ab.arrow],transformation:[8,0,0,0 ,0,8,0,0 ,0,0,8,0 ,0,0,0,1]}
execute if score @s[tag=ab.bow] ab.live_time matches 9 run data modify entity @s item.components."minecraft:custom_model_data".strings set value [shoot]
execute if score @s[tag=ab.bow] ab.live_time matches 12 run data modify entity @s item.components."minecraft:custom_model_data".strings set value []
execute if score @s[tag=ab.bow] ab.live_time matches 12 run summon item_display ~ ~ ~ {item:{id:"firework_star",components:{item_model:"ab:weapon/arrow"}},Tags:[ab.netherite_weapon,ab.arrow],transformation:[8,0,0,0 ,0,8,0,0 ,0,0,8,0 ,0,0,0,1]}
execute if score @s[tag=ab.bow] ab.live_time matches 15 run data modify entity @s item.components."minecraft:custom_model_data".strings set value [shoot]
execute if score @s[tag=ab.bow] ab.live_time matches 18 run data modify entity @s item.components."minecraft:custom_model_data".strings set value []
execute if score @s[tag=ab.bow] ab.live_time matches 18 run summon item_display ~ ~ ~ {item:{id:"firework_star",components:{item_model:"ab:weapon/arrow"}},Tags:[ab.netherite_weapon,ab.arrow],transformation:[8,0,0,0 ,0,8,0,0 ,0,0,8,0 ,0,0,0,1]}

execute if entity @s[tag=ab.arrow] if score @s ab.live_time matches 1 at @n[tag=ab.bow] run tp @s ~ ~ ~ facing ^ ^ ^1
execute if entity @s[tag=ab.arrow] if score @s ab.live_time matches 1..20 run tp ^ ^-1 ^1
execute if entity @s[tag=ab.arrow] if score @s ab.live_time matches 1..20 run damage @n[distance=..2] 33 mob_attack

kill @e[scores={ab.live_time=40..}]