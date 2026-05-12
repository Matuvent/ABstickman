execute align xyz run summon item_display ~0.5 ~0.5 ~0.5 {transformation:[\
1,0,0,0,\
0,1,0,0,\
0,0,1,0,\
0,0,0,1],Tags:[ab.enchant_block,ab.reg],item:{id:grass_block},brightness:{block:0,sky:15}}
loot spawn ~ ~ ~ mine ~ ~ ~ netherite_pickaxe[minecraft:enchantments={silk_touch:1}]
data modify entity @n[tag=ab.enchant_block,tag=ab.reg] item set from entity @n[type=item] Item
data modify entity @n[tag=ab.enchant_block,tag=ab.reg] data.Items set from block ~ ~ ~ Items
setblock ~ ~ ~ air
kill @n[type=item]
data modify entity @n[tag=ab.enchant_block,tag=ab.reg] item.components.minecraft:enchantments set value {unbreaking:1}
tag @n[tag=ab.enchant_block,tag=ab.reg] remove ab.reg

kill