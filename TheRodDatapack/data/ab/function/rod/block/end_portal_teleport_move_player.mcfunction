
tp @e[tag=ab.teleport] ~ ~10000 ~

scoreboard players set @e[tag=ab.teleport] ab.gamemode 0
scoreboard players set @e[tag=ab.teleport,gamemode=creative] ab.gamemode 1
scoreboard players set @e[tag=ab.teleport,gamemode=adventure] ab.gamemode 2

gamemode creative @a[tag=ab.teleport]
execute as @e[tag=ab.teleport] at @s positioned ~ ~-10000 ~ rotated as @n[tag=ab.rod.portal] positioned ~ ~10001 ~ positioned ^ ^ ^-1 summon end_crystal run damage @s 1
execute as @e[tag=ab.teleport] at @s positioned ~ ~-10000 ~ rotated as @n[tag=ab.rod.portal] positioned ~ ~10001 ~ positioned ^ ^ ^-1 summon end_crystal run damage @s 1
gamemode survival @a[scores={ab.gamemode=0}]
gamemode adventure @a[scores={ab.gamemode=2}]

tp @e[tag=ab.teleport] ^ ^ ^2 facing ^ ^ ^5
