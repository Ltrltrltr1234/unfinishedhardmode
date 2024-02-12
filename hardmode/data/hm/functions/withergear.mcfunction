execute if predicate hm:20percent run item replace entity @s armor.head with chainmail_helmet
execute if predicate hm:20percent run item replace entity @s armor.chest with chainmail_chestplate
execute if predicate hm:20percent run item replace entity @s armor.legs with chainmail_leggings
execute if predicate hm:20percent run item replace entity @s armor.feet with chainmail_boots
execute if predicate hm:20percent run item replace entity @s armor.head with chainmail_helmet
execute if predicate hm:20percent run item replace entity @s armor.chest with chainmail_chestplate
execute if predicate hm:20percent run item replace entity @s armor.legs with chainmail_leggings
execute if predicate hm:20percent run item replace entity @s armor.feet with chainmail_boots
execute if predicate hm:10percent run item replace entity @s armor.head with iron_helmet
execute if predicate hm:10percent run item replace entity @s armor.chest with iron_chestplate
execute if predicate hm:10percent run item replace entity @s armor.legs with iron_leggings
execute if predicate hm:10percent run item replace entity @s armor.feet with iron_boots
execute if predicate hm:20percent run item replace entity @s weapon with golden_sword
execute if predicate hm:20percent run item replace entity @s weapon with golden_axe
execute if predicate hm:20percent run item replace entity @s weapon with stone_sword
execute if predicate hm:20percent run item replace entity @s weapon with stone_axe
execute if predicate hm:10percent run item replace entity @s weapon with iron_sword
execute if predicate hm:10percent run item replace entity @s weapon with iron_axe
execute if predicate hm:20percent run enchant @s sharpness 1
execute if predicate hm:10percent run enchant @s sharpness 3
execute if predicate hm:10percent run enchant @s sharpness 4
execute if predicate hm:10percent run enchant @s sharpness 5
execute if predicate hm:20percent run enchant @s knockback 1
execute if predicate hm:10percent run enchant @s knockback 2
execute if predicate hm:10percent run enchant @s fire_aspect 1
execute if predicate hm:10percent run enchant @s fire_aspect 2
execute if entity @s[tag=rangeweap] if predicate hm:20percent run item replace entity @s weapon with bow
execute if entity @s[tag=rangeweap,nbt={SelectedItem:{id:"minecraft:bow",Count:1b}}] if predicate hm:20percent run enchant @s power 2
execute if entity @s[tag=rangeweap,nbt={SelectedItem:{id:"minecraft:bow",Count:1b}}] if predicate hm:20percent run enchant @s power 1
execute if entity @s[tag=rangeweap,nbt={SelectedItem:{id:"minecraft:bow",Count:1b}}] if predicate hm:10percent run enchant @s power 3
execute if entity @s[tag=rangeweap,nbt={SelectedItem:{id:"minecraft:bow",Count:1b}}] if predicate hm:10percent run enchant @s punch 1
execute if entity @s[tag=rangeweap,nbt={SelectedItem:{id:"minecraft:bow",Count:1b}}] if predicate hm:10percent run enchant @s punch 2
execute if entity @s[tag=rangeweap,nbt={SelectedItem:{id:"minecraft:bow",Count:1b}}] if predicate hm:10percent run enchant @s flame 1
tag @s add armourchecked
tag @s add weaponchecked