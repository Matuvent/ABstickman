data remove storage ab command
data modify storage ab command set from entity @s SelectedItem.components."minecraft:custom_data".command
execute store result storage ab command.len int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".command.commands

data modify storage ab command.temp1.command set from entity @s equipment.offhand.components."minecraft:written_book_content".pages[0].raw
data modify storage ab command.commands append from storage ab command.temp1

data modify storage ab command.title set from entity @s equipment.offhand.components."minecraft:written_book_content".title.raw
function ab:rod/block/command_input_set_action with storage ab command
#tellraw @a {nbt:"command.dialog.actions",storage:"ab"}
data modify storage ab command.dialog.actions append from storage ab command.temp
data modify storage ab command.actions set from storage ab command.dialog.actions
function ab:rod/block/command_input_macro with storage ab command
clear @s written_book[custom_data~{type:command_input_bar}]