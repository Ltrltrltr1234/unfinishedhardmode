execute if predicate hm:1in250 if predicate hm:75percent run tag @s add sbs
execute as @s[tag=sbs] at @s run summon skeleton ~ ~ ~ {DeathLootTable:"hm:skeletonbossloot",CustomNameVisible:1b,PersistenceRequired:1b,Health:135f,Tags:["skeletonboss","armourchecked","weaponchecked"],CustomName:'{"text":"Ruin Spectre","color":"#4D4D4D","bold":true,"italic":true}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{display:{Name:'{"text":"Phantom Bow","color":"gray","bold":true,"italic":true}'},Unbreakable:0b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:power",lvl:5s},{id:"minecraft:punch",lvl:2s},{id:"minecraft:mending",lvl:1s}]}},{}],HandDropChances:[0F,0F],ArmorDropChances:[0F,0F,0F,0F],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:feather_falling",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}},{id:"minecraft:chainmail_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}},{id:"minecraft:chainmail_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}}],Attributes:[{Name:"generic.max_health",Base:135},{Name:"generic.follow_range",Base:2048},{Name:"generic.knockback_resistance",Base:0.2},{Name:"generic.movement_speed",Base:0.4},{Name:"generic.armor_toughness",Base:5},{Name:"generic.armor",Base:2}]}
execute as @s[tag=sbs] at @s run playsound entity.wither.spawn master @a ~ ~ ~ 500 1 1
execute as @s[tag=sbs] run tellraw @a [{"text":"A Ruin Spectre has Spawned in the vicinity! ","color":"red","bold":true},{"text":"Teleport to Boss","color":"red","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Teleport to the Nearest Ruin Spectre","color":"dark_red","bold":true,"italic":true}]},"clickEvent":{"action":"suggest_command","value":"/trigger tpboss2 set 1"}}]
execute as @s[tag=sbs] run tp @s ~ ~-999 ~
execute as @s[tag=sbs] run kill @s
tag @s add bosschecked