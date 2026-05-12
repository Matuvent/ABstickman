advancement revoke @s only ab:rod_rc
execute as @a if predicate ab:can_replace_block if predicate ab:is_sneaking run scoreboard players add @s ab.rod.replace_time 1
execute as @a if predicate ab:can_replace_block if predicate ab:is_sneaking run return fail
execute as @s if predicate ab:can_replace_minecraft if predicate ab:is_sneaking run scoreboard players add @s ab.rod.replace_time 1
execute as @a if predicate ab:can_replace_minecraft if predicate ab:is_sneaking run return fail
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:netherite_block"}}] positioned ~ ~1.5 ~ run fill ^-5 ^-5 ^1 ^5 ^10 ^10 air destroy
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:bedrock"}}] positioned ~ ~1.5 ~ run function ab:rod/block/bedrock_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:white_wool"}}] positioned ~ ~1.5 ~ run setblock ^ ^ ^2.5 white_wool
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:oak_log"}}] positioned ~ ~1.5 ~ run function ab:rod/block/oak_log
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:cobblestone"}}] positioned ~ ~1.5 ~ run function ab:rod/block/cobblestone
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:note_block"}}] positioned ~ ~1.5 ~ run function ab:rod/block/note_block_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:magma_block"}}] positioned ~ ~1.5 ~ run function ab:rod/block/magma_block_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:tnt"}}] positioned ~ ~1.5 ~ run scoreboard players add @s ab.rod.shoot_time 1
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:tnt"}}] positioned ~ ~1.5 ~ if score @s ab.rod.shoot_time matches 5.. run function ab:rod/block/tnt
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:redstone_block"}}] positioned ~ ~1.5 ~ run function ab:rod/block/redstone_rc with entity @s
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:lapis_block"}}] positioned ~ ~1.5 ~ run function ab:rod/block/lapis_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:netherrack"}}] positioned ~ ~1.5 ~ run scoreboard players add @s ab.rod.shoot_time 1
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:netherrack"}}] positioned ~ ~1.5 ~ if score @s ab.rod.shoot_time matches 2.. run function ab:rod/block/netherrack_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:bookshelf"}}] positioned ~ ~1.5 ~ run function ab:rod/block/bookshelf_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:bee_nest"}}] positioned ~ ~1.5 ~ run function ab:rod/block/bee_nest_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:player_head"},him:true}] positioned ~ ~1.5 ~ run function ab:rod/block/him_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:ice"}}] positioned ~ ~1.5 ~ run function ab:rod/block/ice_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:wither_skeleton_skull"}}] positioned ~ ~1.5 ~ run function ab:rod/block/wither_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:snow_block"}}] positioned ~ ~1.5 ~ run function ab:rod/block/snow_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:emerald_block"}}] positioned ~ ~1.5 ~ run function ab:rod/block/emerald_block_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:dripstone_block"}}] positioned ~ ~1.5 ~ run function ab:rod/block/dripstone_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:barrier"}}] positioned ~ ~1.5 ~ run function ab:rod/block/barrier_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:campfire"}}] positioned ~ ~1.5 ~ run function ab:rod/block/campfire_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:brewing_stand"}}] positioned ~ ~1.5 ~ run function ab:rod/block/brewing_stand_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:cauldron"}}] positioned ~ ~1.5 ~ run function ab:rod/block/cauldron_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:bundle"}}] positioned ~ ~1.5 ~ run function ab:rod/block/dispenser_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:end_portal_frame"}}] positioned ~ ~1.5 ~ run function ab:rod/block/end_portal_frame_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:lightning_rod"}}] positioned ~ ~1.5 ~ run function ab:rod/block/lightning_rod_lc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:grindstone"}}] positioned ~ ~ ~ run function ab:rod/block/grindstone_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:enchanting_table"}}] positioned ~ ~ ~ run function ab:rod/block/enchanting_table_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:command_block"}}] positioned ~ ~ ~ run function ab:rod/block/command_block_rc with entity @s SelectedItem.components."minecraft:custom_data".command
execute if items entity @s weapon.mainhand stick[custom_data~{final:false,"block":{"components":{"minecraft:custom_data":{type:minecraft}}}}] positioned ~ ~1.5 ~ run function ab:rod/minecraft_rod/rc
execute if items entity @s weapon.mainhand stick[custom_data~{final:true,"block":{"components":{"minecraft:custom_data":{type:minecraft}}}}] positioned ~ ~1.5 ~ run function ab:rod/minecraft_final_rod/rc