
summon egg ^ ^ ^3 {Tags:[ab.reg,ab.dispenser.projectile],Item:{id:blue_egg}}
execute as @e[tag=ab.reg,tag=ab.dispenser.projectile] run tp @s ^ ^ ^1 facing ^ ^ ^4

execute store result score @s ab.x run data get entity @s Pos[0] 100
execute store result score @s ab.y run data get entity @s Pos[1] 100
execute store result score @s ab.z run data get entity @s Pos[2] 100

execute as @n[tag=ab.reg,tag=ab.dispenser.projectile] store result score @s ab.x run data get entity @s Pos[0] 100
execute as @n[tag=ab.reg,tag=ab.dispenser.projectile] store result score @s ab.y run data get entity @s Pos[1] 100
execute as @n[tag=ab.reg,tag=ab.dispenser.projectile] store result score @s ab.z run data get entity @s Pos[2] 100

scoreboard players add @s ab.y 150
scoreboard players operation @n[tag=ab.reg,tag=ab.dispenser.projectile] ab.x -= @s ab.x
scoreboard players operation @n[tag=ab.reg,tag=ab.dispenser.projectile] ab.y -= @s ab.y
scoreboard players operation @n[tag=ab.reg,tag=ab.dispenser.projectile] ab.z -= @s ab.z

execute store result storage ab small_fireball.x double 0.03 run scoreboard players get @n[tag=ab.reg,tag=ab.dispenser.projectile] ab.x
execute store result storage ab small_fireball.y double 0.03 run scoreboard players get @n[tag=ab.reg,tag=ab.dispenser.projectile] ab.y
execute store result storage ab small_fireball.z double 0.03 run scoreboard players get @n[tag=ab.reg,tag=ab.dispenser.projectile] ab.z

execute as @n[tag=ab.reg,tag=ab.dispenser.projectile] run function ab:rod/block/shoot with storage ab small_fireball
#execute as @n[tag=ab.reg,type=small_fireball] run tp @s ^ ^ ^2.5 facing ^ ^ ^3
tag @n[tag=ab.reg,tag=ab.dispenser.projectile] remove ab.reg

item modify entity @s weapon.mainhand {"function": "minecraft:modify_contents",\
  "component": "minecraft:bundle_contents",\
  "modifier": [\
    {\
      "function": "minecraft:filtered",\
      "item_filter": {\
        "items": "minecraft:blue_egg"\
      },\
      "on_pass": [\
        {\
          "function": "minecraft:set_count",\
          "count": -1,\
          "add": true\
        }\
      ]\
    }\
  ]}