
#summon marker ~ ~ ~ {Tags:[ab.black_hole_marker]}
$execute positioned ~ ~ ~4 if entity @n[tag=ab.black_hole,distance=..$(r)] unless entity @e[tag=ab.black_hole_marker,distance=..2] run function ab:rod/minecraft_rod/block_disapear
$execute positioned ~ ~ ~-4 if entity @n[tag=ab.black_hole,distance=..$(r)] unless entity @e[tag=ab.black_hole_marker,distance=..2] run function ab:rod/minecraft_rod/block_disapear
$execute positioned ~4 ~ ~ if entity @n[tag=ab.black_hole,distance=..$(r)] unless entity @e[tag=ab.black_hole_marker,distance=..2] run function ab:rod/minecraft_rod/block_disapear
$execute positioned ~-4 ~ ~ if entity @n[tag=ab.black_hole,distance=..$(r)] unless entity @e[tag=ab.black_hole_marker,distance=..2] run function ab:rod/minecraft_rod/block_disapear
$execute positioned ~ ~4 ~ if entity @n[tag=ab.black_hole,distance=..$(r)] unless entity @e[tag=ab.black_hole_marker,distance=..2] run function ab:rod/minecraft_rod/block_disapear
$execute positioned ~ ~-4 ~ if entity @n[tag=ab.black_hole,distance=..$(r)] unless entity @e[tag=ab.black_hole_marker,distance=..2] run function ab:rod/minecraft_rod/block_disapear
#setblock ~ ~ ~ air
#$say $(r)