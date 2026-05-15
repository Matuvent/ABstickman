advancement revoke @s only ab:lightning_bolt
execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:player_head"}}] run item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{him:true}}

execute if items entity @s weapon.mainhand stick[custom_data~{"block":{"id":"minecraft:player_head"},him:true}] run item modify entity @s weapon.mainhand {function:"set_attributes",replace:false,modifiers:[{id:him_attack_speed,attribute:"attack_speed",operation:"add_value",amount:2,slot:"mainhand"},{id:him_attack,attribute:"attack_damage",operation:"add_value",amount:20,slot:"mainhand"},{id:him_armor,attribute:"armor",operation:"add_value",amount:20,slot:"mainhand"},{id:him_armor_toughness,attribute:"armor_toughness",operation:"add_value",amount:20,slot:"mainhand"}]}


execute if items entity @s weapon.offhand stick[custom_data~{"block":{"id":"minecraft:player_head"}}] run item modify entity @s weapon.offhand {function:"set_custom_data",tag:{him:true}}

execute if items entity @s weapon.offhand stick[custom_data~{"block":{"id":"minecraft:player_head"},him:true}] run item modify entity @s weapon.offhand {function:"set_attributes",replace:false,modifiers:[{id:him_attack_speed,attribute:"attack_speed",operation:"add_value",amount:2,slot:"mainhand"},{id:him_attack,attribute:"attack_damage",operation:"add_value",amount:20,slot:"mainhand"},{id:him_armor,attribute:"armor",operation:"add_value",amount:20,slot:"mainhand"},{id:him_armor_toughness,attribute:"armor_toughness",operation:"add_value",amount:20,slot:"mainhand"}]}
