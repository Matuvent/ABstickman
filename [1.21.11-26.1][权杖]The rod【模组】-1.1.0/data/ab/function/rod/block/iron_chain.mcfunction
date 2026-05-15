tp ^ ^ ^1
execute run summon block_display ~ ~ ~ {block_state:{Name:iron_chain},Tags:[ab.rod.iron_chain_display,ab.reg],transformation:[\
1,0,0,-0.5,\
0,0,-1,0.5,\
0,1,0,0,\
0,0,0,1]}
data modify entity @n[tag=ab.rod.iron_chain_display,tag=ab.reg] data.UUID set from entity @s data.UUID
data modify entity @n[tag=ab.rod.iron_chain_display,tag=ab.reg] data.num set from entity @s data.num
execute as @e[tag=ab.rod.iron_chain_display,tag=ab.reg] run tp @s ~ ~ ~ facing ^ ^ ^1
tag @e[tag=ab.rod.iron_chain_display,tag=ab.reg] remove ab.reg
execute positioned ~ ~-1 ~ run effect give @e[type=!#ab:non_mob,distance=..1] slowness 1 5 true
execute positioned ~ ~-1 ~ if entity @e[type=!#ab:non_mob,distance=..1] run function ab:rod/block/iron_chain_end
execute unless block ~ ~ ~ #air run function ab:rod/block/iron_chain_end
execute unless entity @a[distance=..50] run function ab:rod/block/iron_chain_end
scoreboard players add @s ab.live_time 1
kill @s[scores={ab.live_time=100..}]