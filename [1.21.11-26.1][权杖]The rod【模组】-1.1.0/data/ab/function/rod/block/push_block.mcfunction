execute if entity @s[y_rotation=30..150,x_rotation=-75..75] run clone ~-1 ~-1 ~3 ~-5 ~5 ~-3 ~-6 ~-1 ~-3 replace force
execute if entity @s[y_rotation=30..150,x_rotation=-75..75] run fill ~-1 ~-1 ~3 ~-1 ~5 ~-3 air

execute if entity @s[y_rotation=-150..-30,x_rotation=-75..75] run clone ~-1 ~-1 ~-3 ~5 ~5 ~3 ~ ~-1 ~-3 replace force
execute if entity @s[y_rotation=-150..-30,x_rotation=-75..75] run fill ~-1 ~-1 ~3 ~-1 ~5 ~-3 air

execute if entity @s[y_rotation=-60..60,x_rotation=-75..75] run clone ~3 ~-1 ~-1 ~-3 ~5 ~5 ~-3 ~-1 ~ replace force
execute if entity @s[y_rotation=-60..60,x_rotation=-75..75] run fill ~3 ~-1 ~-1 ~-3 ~5 ~-1 air

execute if entity @s[y_rotation=-180..-120,x_rotation=-75..75] run clone ~-3 ~-1 ~1 ~3 ~5 ~-5 ~-3 ~-1 ~-6 replace force
execute if entity @s[y_rotation=..-120,x_rotation=-75..75] run fill ~-3 ~-1 ~1 ~3 ~5 ~1 air

execute if entity @s[y_rotation=120..180,x_rotation=-75..75] run clone ~-3 ~-1 ~1 ~3 ~5 ~-5 ~-3 ~-1 ~-6 replace force
execute if entity @s[y_rotation=120..,x_rotation=-75..75] run fill ~-3 ~-1 ~1 ~3 ~5 ~1 air

execute if entity @s[x_rotation=-90..-45] run clone ~-3 ~1 ~-3 ~3 ~5 ~3 ~-3 ~2 ~-3 replace force
execute if entity @s[x_rotation=-90..-45] run fill ~-3 ~1 ~-3 ~3 ~1 ~3 air
execute if entity @s[x_rotation=45..90] run clone ~-3 ~ ~-3 ~3 ~-6 ~3 ~-3 ~-7 ~-3 replace force
execute if entity @s[x_rotation=45..90] run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 air
