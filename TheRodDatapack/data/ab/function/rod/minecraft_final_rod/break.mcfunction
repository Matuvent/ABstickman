data modify storage ab break set value [{"nbt":"break","storage":"ab","interpret":1b},{"nbt":"break","storage":"ab","interpret":1b}]
execute summon text_display run data modify entity @s text set value {nbt:"break",storage:"ab",interpret:1b}
tellraw @s "开始毁灭世界"
scoreboard players set @s ab.break_anwser 0