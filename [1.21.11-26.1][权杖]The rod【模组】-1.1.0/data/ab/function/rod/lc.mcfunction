
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:diamond_block"}}] positioned ~ ~1.5 ~ run fill ^-3 ^-1 ^0 ^3 ^6 ^6 air destroy

execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:obsidian"}}] positioned ~ ~1.5 ~ run function ab:rod/block/obsidian
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:bedrock"}}] positioned ~ ~1.5 ~ run function ab:rod/block/bedrock_lc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:white_wool"}}] positioned ~ ~1.5 ~ run setblock ^ ^ ^2 white_wool
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:oak_log"}}] positioned ~ ~1.5 ~ run function ab:rod/block/oak_log
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:cobblestone"}}] positioned ~ ~1.5 ~ run function ab:rod/block/cobblestone
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:note_block"}}] positioned ~ ~1.5 ~ run function ab:rod/block/note_block_lc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:tnt"}}] positioned ~ ~1.5 ~ run function ab:rod/block/tnt
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:redstone_block"}}] positioned ~ ~1.5 ~ run function ab:rod/block/redstone_lc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:lapis_block"}}] positioned ~ ~1.5 ~ run function ab:rod/block/lapis_lc with entity @s
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:netherrack"}}] positioned ~ ~1.5 ~ run function ab:rod/block/netherrack_lc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:bee_nest"}}] positioned ~ ~1.5 ~ run function ab:rod/block/bee_nest_lc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:player_head"},him:true}] positioned ~ ~1.5 ~ run function ab:rod/block/him_lc with entity @s
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:ice"}}] positioned ~ ~1.5 ~ run function ab:rod/block/ice_lc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:wither_skeleton_skull"}}] positioned ~ ~1.5 ~ run function ab:rod/block/wither_lc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:snow_block"}}] positioned ~ ~1.5 ~ run function ab:rod/block/snow_lc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:emerald_block"}}] positioned ~ ~1.5 ~ run function ab:rod/block/emerald_block_lc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:dripstone_block"}}] positioned ~ ~1.5 ~ run function ab:rod/block/dripstone_lc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:barrier"}}] positioned ~ ~1.5 ~ run function ab:rod/block/barrier_lc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:campfire"}}] positioned ~ ~1.5 ~ run function ab:rod/block/campfire_lc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:brewing_stand"}}] positioned ~ ~1.5 ~ run function ab:rod/block/brewing_stand_lc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:bundle"}}] positioned ~ ~1.5 ~ run function ab:rod/block/dispenser_rc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:end_portal_frame"}}] positioned ~ ~1.5 ~ run function ab:rod/block/end_portal_frame_lc with entity @s
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:lightning_rod"}}] positioned ~ ~1.5 ~ run function ab:rod/block/lightning_rod_lc
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:iron_block"}}] positioned ~ ~1.5 ~ run function ab:rod/block/iron_block_lc with entity @s
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:enchanting_table"}}] positioned ~ ~ ~ run function ab:rod/block/enchanting_table_lc

execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:command_block"}}] positioned ~ ~ ~ run function ab:rod/block/command_block_lc
execute if items entity @s weapon.mainhand stick[custom_data~{final:false,"block":{"components":{"minecraft:custom_data":{type:minecraft}}}}] positioned ~ ~1.5 ~ run function ab:rod/minecraft_rod/lc
execute if items entity @s weapon.mainhand stick[custom_data~{final:true,"block":{"components":{"minecraft:custom_data":{type:minecraft}}}}] positioned ~ ~1.5 ~ run function ab:rod/minecraft_final_rod/lc