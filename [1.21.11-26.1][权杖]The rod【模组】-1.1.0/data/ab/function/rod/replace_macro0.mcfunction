$item replace entity @s weapon.offhand with $(id) $(count)
$item modify entity @s weapon.offhand {function:"set_components",components:$(components)}