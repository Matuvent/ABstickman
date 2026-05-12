execute if items entity @s weapon.mainhand stick[custom_data~{final:true}] run tellraw @s {text:"无法将其取出！！！",bold:true,color:red}
execute if items entity @s weapon.mainhand stick[custom_data~{final:true}] run return fail
data remove storage ab rod
data modify storage ab rod.rod_block.id set value "minecraft:air"
data modify storage ab rod.offhand.id set value "minecraft:air"
data modify storage ab rod.rod_block.components set value {}
data modify storage ab rod.offhand.components set value {}
data modify storage ab rod.rod_block.count set value 1
data modify storage ab rod.offhand.count set value 1
data modify storage ab rod.rod_block.id set from entity @s SelectedItem.components."minecraft:custom_data".block.id
data modify storage ab rod.rod_block.components set from entity @s SelectedItem.components."minecraft:custom_data".block.components
data modify storage ab rod.rod_block.count set from entity @s SelectedItem.components."minecraft:custom_data".block.count
data modify storage ab rod.offhand.id set from entity @s equipment.offhand.id
data modify storage ab rod.offhand.components set from entity @s equipment.offhand.components
data modify storage ab rod.offhand.count set from entity @s equipment.offhand.count
function ab:rod/replace_macro0 with storage ab rod.rod_block
function ab:rod/replace_macro1 with storage ab rod.offhand
function ab:rod/replace_macro2 with storage ab rod.offhand
scoreboard players set @s ab.rod.replace_time 0
function ab:rod/attributre
