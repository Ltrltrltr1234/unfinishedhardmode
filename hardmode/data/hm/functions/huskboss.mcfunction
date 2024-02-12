execute if predicate hm:1percent run tag @s add hbs
execute as @s[tag=hbs] at @s run summon husk ~ ~ ~ {CustomNameVisible:1b,PersistenceRequired:1b,Health:100f,IsBaby:0b,Tags:["leapability","huskboss","armourchecked","weaponchecked"],CustomName:'{"text":"Decayed Ancient","color":"#5A6912","bold":true,"italic":true}',HandItems:[{id:"minecraft:netherite_shovel",Count:1b,tag:{display:{Name:'{"text":"Ashen Fury","color":"gold","bold":true}'},Unbreakable:1b,customweapon:1,Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:knockback",lvl:4s},{id:"minecraft:looting",lvl:3s},{id:"minecraft:efficiency",lvl:5s},{id:"minecraft:unbreaking",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:5,Operation:0,UUID:[I;-447405242,-320191028,-1332760466,-768685280],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6.5,Operation:0,UUID:[I;281589985,1987136883,-1782969927,-326412246],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.6,Operation:2,UUID:[I;-1722833031,-604618137,-1270792018,135830407],Slot:"mainhand"}]}},{}],HandDropChances:[1.000F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:5714176},Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:20s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6710843},Unbreakable:1b,Enchantments:[{id:"minecraft:thorns",lvl:5s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11378760},Unbreakable:1b,Enchantments:[{id:"minecraft:fire_protection",lvl:20s}]}},{id:"minecraft:golden_helmet",Count:1b,tag:{Unbreakable:1b}}],Attributes:[{Name:"generic.max_health",Base:100},{Name:"generic.follow_range",Base:2048},{Name:"generic.knockback_resistance",Base:0.3},{Name:"generic.movement_speed",Base:0.2},{Name:"generic.attack_damage",Base:0},{Name:"generic.attack_knockback",Base:3},{Name:"zombie.spawn_reinforcements",Base:0}]}
execute as @s[tag=hbs] at @s run playsound entity.wither.spawn master @a ~ ~ ~ 500 1 1
execute as @s[tag=hbs] run tellraw @a [{"text":"A Decayed Ancient has Spawned in the vicinity! ","color":"red","bold":true},{"text":"Teleport to Boss","color":"red","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Teleport to the Nearest Decayed Ancient","color":"dark_red","bold":true,"italic":true}]},"clickEvent":{"action":"suggest_command","value":"/trigger tpboss4 set 1"}}]
execute as @s[tag=hbs] run tp @s ~ ~-999 ~
execute as @s[tag=hbs] run kill @s
tag @s add bosschecked