execute positioned ^ ^ ^2.5 as @e[distance=..2] positioned ^ ^ ^-2.5 positioned ~ ~-1.5 ~ unless entity @s[distance=..1] run damage @s 10 mob_attack
setblock ^ ^ ^2.5 bedrock
execute positioned ^ ^ ^2.5 align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:[ab.rod.bedrock,ab.reg]}