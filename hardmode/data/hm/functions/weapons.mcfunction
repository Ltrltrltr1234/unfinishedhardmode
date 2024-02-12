execute if predicate hm:5percent run item replace entity @s weapon with iron_sword
execute if predicate hm:5percent run item replace entity @s weapon with iron_axe
execute if predicate hm:5percent run item replace entity @s weapon with golden_sword
execute if predicate hm:5percent run item replace entity @s weapon with golden_axe
execute if predicate hm:10percent run item replace entity @s weapon with wooden_sword
execute if predicate hm:10percent run item replace entity @s weapon with wooden_axe
execute if predicate hm:10percent run item replace entity @s weapon with stone_pickaxe
execute if predicate hm:5percent run item replace entity @s weapon with stone_sword
execute if predicate hm:5percent run item replace entity @s weapon with stone_axe
execute if predicate hm:5percent run item replace entity @s weapon with iron_shovel
execute if predicate hm:5percent run item replace entity @s weapon with iron_pickaxe
execute if predicate hm:10percent run enchant @s sharpness 1
execute if predicate hm:10percent run enchant @s sharpness 2
execute if predicate hm:10percent run enchant @s sharpness 3
execute if predicate hm:10percent run enchant @s knockback 1
execute if predicate hm:10percent run enchant @s knockback 2
execute if predicate hm:10percent run enchant @s fire_aspect 1
execute if entity @s[tag=rangeweap] if predicate hm:75percent run item replace entity @s weapon with bow
execute if entity @s[tag=rangeweap,nbt={SelectedItem:{id:"minecraft:bow",Count:1b}}] if predicate hm:20percent run enchant @s power 2
execute if entity @s[tag=rangeweap,nbt={SelectedItem:{id:"minecraft:bow",Count:1b}}] if predicate hm:20percent run enchant @s power 1
execute if entity @s[tag=rangeweap,nbt={SelectedItem:{id:"minecraft:bow",Count:1b}}] if predicate hm:10percent run enchant @s power 3
execute if entity @s[tag=rangeweap,nbt={SelectedItem:{id:"minecraft:bow",Count:1b}}] if predicate hm:10percent run enchant @s punch 1
execute if entity @s[tag=rangeweap,nbt={SelectedItem:{id:"minecraft:bow",Count:1b}}] if predicate hm:10percent run enchant @s punch 2
execute if entity @s[tag=rangeweap,nbt={SelectedItem:{id:"minecraft:bow",Count:1b}}] if predicate hm:10percent run enchant @s flame 1
tag @s add weaponchecked
