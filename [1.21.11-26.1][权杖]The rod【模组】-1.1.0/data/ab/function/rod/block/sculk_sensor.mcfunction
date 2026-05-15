effect give @s[scores={ab.sculk_count=1..}] resistance 1 4 true
effect clear @s[scores={ab.sculk_count=..0}] resistance
scoreboard players remove @s ab.sculk_cd 1
execute if score @s ab.sculk_cd matches ..0 unless score @s ab.sculk_count matches 20.. run scoreboard players add @s ab.sculk_count 1
execute if score @s ab.sculk_cd matches ..0 run scoreboard players set @s ab.sculk_cd 20
scoreboard players remove @s[scores={ab.sculk_anim=1..}] ab.sculk_anim 1
execute if items entity @s weapon.mainhand stick[custom_data~{block:{id:"minecraft:sculk_sensor"}}] run item modify entity @s[scores={ab.sculk_anim=..0}] weapon.mainhand {function:"set_custom_model_data",flags:{mode:"replace_all",values:[false]}}
execute if items entity @s weapon.offhand stick[custom_data~{block:{id:"minecraft:sculk_sensor"}}] run item modify entity @s[scores={ab.sculk_anim=..0}] weapon.offhand {function:"set_custom_model_data",flags:{mode:"replace_all",values:[false]}}
execute as @e[type=#ab:projectile,distance=..3] as @n run function ab:rod/block/sculk_sensor_active