

data remove storage ab dispenser
execute store result score @s ab.dispenser.item_count if data entity @s SelectedItem.components."minecraft:custom_data".block.components."minecraft:bundle_contents"[]
scoreboard players remove @s ab.dispenser.item_count 1
execute store result storage ab dispenser.item_count int 1 run scoreboard players get @s ab.dispenser.item_count
execute if score @s ab.dispenser.item_count matches ..-1 run return fail
data modify storage ab dispenser.random_slot set value 0
function ab:dispenser/random_slot with storage ab dispenser
function ab:rod/block/dispenser_get_itemstack with storage ab dispenser

data modify storage ab projectile.snowball set value "minecraft:snowball"
scoreboard players set @s ab.temp 1
execute store success score @s ab.temp run data modify storage ab projectile.snowball set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/snowball
execute if score @s ab.temp matches 0 run return run scoreboard players set @s ab.temp 0 

data modify storage ab projectile.arrow set value "minecraft:arrow"
scoreboard players set @s ab.temp 1
execute store success score @s ab.temp run data modify storage ab projectile.arrow set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/arrow
execute if score @s ab.temp matches 0 run return run scoreboard players set @s ab.temp 0 


data modify storage ab projectile.spectral_arrow set value "minecraft:spectral_arrow"
scoreboard players set @s ab.temp 1
execute store success score @s ab.temp run data modify storage ab projectile.spectral_arrow set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/spectral_arrow
execute if score @s ab.temp matches 0 run return run scoreboard players set @s ab.temp 0 


data modify storage ab projectile.fire_charge set value "minecraft:fire_charge"
scoreboard players set @s ab.temp 1
execute store success score @s ab.temp run data modify storage ab projectile.fire_charge set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/fire_charge
execute if score @s ab.temp matches 0 run return run scoreboard players set @s ab.temp 0 


data modify storage ab projectile.tipped_arrow set value "minecraft:tipped_arrow"
scoreboard players set @s ab.temp 1
execute store success score @s ab.temp run data modify storage ab projectile.tipped_arrow set from storage ab dispenser.itemstack.id
data modify storage ab dispenser.potion_contents set from storage ab dispenser.itemstack.components."minecraft:potion_contents"
#tellraw @a {nbt:"dispenser.itemstack.components.'minecraft:potion_contents'",storage:"ab"}
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/tipped_arrow with storage ab dispenser
execute if score @s ab.temp matches 0 run return run scoreboard players set @s ab.temp 0 


data modify storage ab projectile.firework_rocket set value "minecraft:firework_rocket"
scoreboard players set @s ab.temp 1
execute store success score @s ab.temp run data modify storage ab projectile.firework_rocket set from storage ab dispenser.itemstack.id
execute store result storage ab dispenser.flight_duration int 10 run data get storage ab dispenser.itemstack.components."minecraft:fireworks".flight_duration
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/firework_rocket with storage ab dispenser
execute if score @s ab.temp matches 0 run return run scoreboard players set @s ab.temp 0 

data modify storage ab projectile.trident set value "minecraft:trident"
scoreboard players set @s ab.temp 1
execute store success score @s ab.temp run data modify storage ab projectile.trident set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/trident
execute if score @s ab.temp matches 0 run return run scoreboard players set @s ab.temp 0 

data modify storage ab projectile.tnt set value "minecraft:tnt"
scoreboard players set @s ab.temp 1
execute store success score @s ab.temp run data modify storage ab projectile.tnt set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/tnt
execute if score @s ab.temp matches 0 run return run scoreboard players set @s ab.temp 0 

data modify storage ab projectile.wind_charge set value "minecraft:wind_charge"
scoreboard players set @s ab.temp 1
execute store success score @s ab.temp run data modify storage ab projectile.wind_charge set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/wind_charge
execute if score @s ab.temp matches 0 run return run scoreboard players set @s ab.temp 0 

data modify storage ab projectile.egg set value "minecraft:egg"
scoreboard players set @s ab.temp 1
execute store success score @s ab.temp run data modify storage ab projectile.egg set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/egg
execute if score @s ab.temp matches 0 run return run scoreboard players set @s ab.temp 0 

data modify storage ab projectile.blue_egg set value "minecraft:blue_egg"
scoreboard players set @s ab.temp 1
execute store success score @s ab.temp run data modify storage ab projectile.blue_egg set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/blue_egg
execute if score @s ab.temp matches 0 run return run scoreboard players set @s ab.temp 0 

data modify storage ab projectile.brown_egg set value "minecraft:brown_egg"
scoreboard players set @s ab.temp 1
execute store success score @s ab.temp run data modify storage ab projectile.brown_egg set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/brown_egg
execute if score @s ab.temp matches 0 run return run scoreboard players set @s ab.temp 0 

data modify storage ab projectile.minecart set value "minecraft:minecart"
scoreboard players set @s ab.temp 1
execute store success score @s ab.temp run data modify storage ab projectile.minecart set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/minecart
execute if score @s ab.temp matches 0 run return run scoreboard players set @s ab.temp 0 

data modify storage ab projectile.boat.1 set value "minecraft:oak_boat"
data modify storage ab projectile.boat.2 set value "minecraft:dark_oak_boat"
data modify storage ab projectile.boat.3 set value "minecraft:spruce_boat"
data modify storage ab projectile.boat.4 set value "minecraft:bamboo_boat"
data modify storage ab projectile.boat.5 set value "minecraft:birch_boat"
data modify storage ab projectile.boat.6 set value "minecraft:jungle_boat"
data modify storage ab projectile.boat.7 set value "minecraft:acacia_boat"
data modify storage ab projectile.boat.8 set value "minecraft:mangrove_boat"
data modify storage ab projectile.boat.9 set value "minecraft:cherry_boat"
data modify storage ab projectile.boat.10 set value "minecraft:pale_oak_boat"
scoreboard players set @s ab.temp 1
execute store success score @s ab.temp run data modify storage ab projectile.boat.1 set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/boat with storage ab dispenser.itemstack
execute store success score @s ab.temp run data modify storage ab projectile.boat.2 set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/boat with storage ab dispenser.itemstack
execute store success score @s ab.temp run data modify storage ab projectile.boat.3 set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/boat with storage ab dispenser.itemstack
execute store success score @s ab.temp run data modify storage ab projectile.boat.4 set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/boat with storage ab dispenser.itemstack
execute store success score @s ab.temp run data modify storage ab projectile.boat.5 set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/boat with storage ab dispenser.itemstack
execute store success score @s ab.temp run data modify storage ab projectile.boat.6 set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/boat with storage ab dispenser.itemstack
execute store success score @s ab.temp run data modify storage ab projectile.boat.7 set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/boat with storage ab dispenser.itemstack
execute store success score @s ab.temp run data modify storage ab projectile.boat.8 set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/boat with storage ab dispenser.itemstack
execute store success score @s ab.temp run data modify storage ab projectile.boat.9 set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/boat with storage ab dispenser.itemstack
execute store success score @s ab.temp run data modify storage ab projectile.boat.10 set from storage ab dispenser.itemstack.id
execute if score @s ab.temp matches 0 positioned ~ ~ ~ run function ab:dispenser/projectile/boat with storage ab dispenser.itemstack
execute if score @s ab.temp matches 0 run return run scoreboard players set @s ab.temp 0 
