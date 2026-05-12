execute if score @s ab.rod.replace_time matches 10.. run function ab:rod/replace
execute unless predicate ab:is_sneaking run scoreboard players set @s ab.rod.replace_time 0
execute unless predicate ab:can_replace_block unless predicate ab:can_replace_minecraft run scoreboard players set @s ab.rod.replace_time 0

execute if score @s ab.netherite_block_knockback_time matches 1.. run function ab:rod/knockback

execute if score @s ab.laser_time matches 1.. run scoreboard players remove @s ab.laser_time 1
execute if score @s ab.laser_time < @s ab.laser_time1 run function ab:rod/block/redstone_laser_end
scoreboard players operation @s ab.laser_time1 = @s ab.laser_time

execute if score @s ab.emerald_time matches 1.. run scoreboard players remove @s ab.emerald_time 1
execute if score @s ab.emerald_time < @s ab.emerald_time1 run function ab:rod/block/emerald_end
scoreboard players operation @s ab.emerald_time1 = @s ab.emerald_time


execute if score @s ab.campfire_fly_time matches 1.. run scoreboard players remove @s ab.campfire_fly_time 1
execute if score @s ab.campfire_fly_time < @s ab.campfire_fly_time1 run function ab:rod/block/campfire_fly_end
scoreboard players operation @s ab.campfire_fly_time1 = @s ab.campfire_fly_time

execute if score @s ab.portal_time matches 1.. run scoreboard players remove @s ab.portal_time 1
execute if score @s ab.portal_time < @s ab.portal_time1 run function ab:rod/block/end_portal_end
scoreboard players operation @s ab.portal_time1 = @s ab.portal_time

execute if items entity @s weapon.* stick[custom_data~{"block":{"id":"minecraft:lapis_block"}}] run effect give @s slow_falling 1 0 true
execute if items entity @s weapon.* stick[custom_data~{"block":{"id":"minecraft:lapis_block"}}] unless predicate ab:is_sneaking run effect give @s levitation 1 0 true
execute if items entity @s weapon.* firework_star[custom_data~{"type":"minecraft"}] run function ab:rod/minecraft/passivity
execute if items entity @s weapon.* stick[custom_data~{block:{components:{"minecraft:custom_data":{type:minecraft}}}}] run function ab:rod/minecraft_rod/passivity

execute if score @s ab.rod.charge_up matches 1.. run scoreboard players remove @s ab.rod.charge_up 1


#tellraw @a {nbt:"SelectedItem.use_duration",entity:"@s"}


execute if score @s ab.campfire_time matches 1.. run scoreboard players remove @s ab.campfire_time 1
execute if score @s ab.campfire_time matches 1.. if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:campfire"}}] positioned ~ ~1.5 ~ run function ab:rod/block/campfire_continue

execute if score @s ab.debuff matches 1.. run function ab:rod/debuff

scoreboard players enable @s[type=player] ab.command_selected
execute if score @s ab.command_selected matches 0.. run function ab:rod/block/command_block_select

execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:command_block"}}] if items entity @s weapon.offhand written_book[custom_data~{"type":"command_input_bar"}] run function ab:rod/block/command_input


execute as @s[tag=ab.rod.bedrock] at @s run function ab:rod/block/bedrock

execute as @s[tag=ab.rod.note] at @s run function ab:rod/block/note
execute as @s[tag=ab.rod.stave] at @s run function ab:rod/block/note_block_stave
execute as @s[tag=ab.rod.small_laser] at @s run function ab:rod/block/redstone_small_laser
execute as @s[tag=ab.rod.netherrack] at @s run function ab:rod/block/netherrack
execute as @s[tag=ab.rod.book] at @s run function ab:rod/block/book
execute as @s[tag=ab.rod.bee] at @s run function ab:rod/block/bee
execute as @s[tag=ab.rod.him_head] at @s run function ab:rod/block/him_head
execute as @s[tag=ab.rod.ice] at @s run function ab:rod/block/ice
execute as @s[tag=ab.rod.emerald_marker] at @s run function ab:rod/block/emerald_marker
execute as @s[tag=ab.rod.dripstone] at @s run function ab:rod/block/dripstone
execute as @s[tag=ab.rod.barrier] at @s run function ab:rod/block/barrier
execute as @s[tag=ab.rod.barrier_bullet] at @s run function ab:rod/block/barrier_bullet
execute as @s[tag=ab.rod.campfire_fire] at @s run function ab:rod/block/campfire_fire
execute as @s[tag=ab.rod.brewing_effect] at @s run function ab:rod/block/brewing_effect with entity @s data.color
execute as @s[tag=ab.rod.portal] at @s run function ab:rod/block/end_portal
execute as @s[tag=ab.rod.iron_chain] at @s run function ab:rod/block/iron_chain
execute as @s[tag=ab.iron_block_display] at @s run function ab:rod/minecraft/iron_block
execute as @s[tag=ab.move_block] at @s run function ab:rod/minecraft/move
execute as @s[tag=ab.black_hit_display] at @s run function ab:rod/minecraft_rod/black_hit_display
execute as @s[tag=ab.minecraft_rod_obsidian,tag=start] if score @s ab.minecraft_rod_rc_time matches -4.. at @s run function ab:rod/minecraft_rod/elong
execute as @s[tag=ab.rod_ray] at @s run function ab:rod/minecraft_rod/ray
execute as @s[tag=ab.black_hole] at @s run function ab:rod/minecraft_rod/black_hole
#execute as @s[tag=ab.final_ray] at @s run function ab:rod/minecraft_final_rod/final_ray
execute as @s[tag=ab.final_ray_core] at @s run function ab:rod/minecraft_final_rod/continue
#execute as @s[tag=ab.light] at @s run function ab:rod/minecraft_final_rod/light
#execute if score world ab.per_sencond matches 0 as @s[type=item] if data entity @s Item.components."minecraft:custom_data"{type:rod} run data modify entity @s Age set value -1
#execute if score world ab.per_sencond matches 0 as @s[type=item] if data entity @s Item.components."minecraft:custom_data"{type:minecraft} run data modify entity @s Age set value -1

execute if score @s ab.minecraft_rc_time matches 1.. run scoreboard players remove @s ab.minecraft_rc_time 1
execute if score @s ab.minecraft_rc_time < @s ab.minecraft_rc_time1 run function ab:rod/minecraft/end
scoreboard players operation @s ab.minecraft_rc_time1 = @s ab.minecraft_rc_time

execute if score @s[type=player] ab.minecraft_rod_rc_time matches 1.. run scoreboard players remove @s ab.minecraft_rod_rc_time 1
execute if score @s[type=player] ab.minecraft_rod_rc_time < @s ab.minecraft_rod_rc_time1 run function ab:rod/minecraft_rod/end
scoreboard players operation @s ab.minecraft_rod_rc_time1 = @s ab.minecraft_rod_rc_time


execute if score @s[type=player] ab.minecraft_final_rod_rc_time matches 1.. run scoreboard players remove @s ab.minecraft_final_rod_rc_time 1
execute if score @s[type=player] ab.minecraft_final_rod_rc_time < @s ab.minecraft_final_rod_rc_time1 run function ab:rod/minecraft_final_rod/end
scoreboard players operation @s ab.minecraft_final_rod_rc_time1 = @s ab.minecraft_final_rod_rc_time