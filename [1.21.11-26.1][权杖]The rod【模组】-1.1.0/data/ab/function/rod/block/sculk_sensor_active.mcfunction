execute if score @s ab.sculk_cd matches ..0 unless score @s ab.sculk_cd matches 100.. run scoreboard players add @s ab.sculk_cd 5
tp ^ ^1 ^1
execute if items entity @s weapon.mainhand stick[custom_data~{block:{id:"minecraft:sculk_sensor"}}] run item modify entity @s weapon.mainhand {function:"set_custom_model_data",flags:{mode:"replace_all",values:[true]}}
execute if items entity @s weapon.offhand stick[custom_data~{block:{id:"minecraft:sculk_sensor"}}] run item modify entity @s weapon.offhand {function:"set_custom_model_data",flags:{mode:"replace_all",values:[true]}}
scoreboard players remove @s[scores={ab.sculk_count=1..}] ab.sculk_count 1
scoreboard players set @s ab.sculk_anim 16
playsound block.sculk_sensor.clicking player @a[distance=..16]