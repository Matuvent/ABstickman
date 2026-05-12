item modify entity @s armor.head {function:"enchant_randomly",only_compatible:false}
item modify entity @s armor.chest {function:"enchant_randomly",only_compatible:false}
item modify entity @s armor.legs {function:"enchant_randomly",only_compatible:false}
item modify entity @s armor.feet {function:"enchant_randomly",only_compatible:false}
execute if items entity @s weapon.mainhand stick[custom_data~{block:{id:"minecraft:enchanting_table"}}] run item modify entity @s weapon.offhand {function:"enchant_randomly",only_compatible:false}
execute if items entity @s weapon.offhand stick[custom_data~{block:{id:"minecraft:enchanting_table"}}] run item modify entity @s weapon.mainhand {function:"enchant_randomly",only_compatible:false}