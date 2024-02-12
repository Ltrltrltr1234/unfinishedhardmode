execute as @a[scores={tpboss7=1..}] at @s unless entity @e[tag=witherboss] run tellraw @s "Boss no longer exists! D:"
execute as @a[scores={tpboss7=1..}] at @s if entity @e[tag=witherboss] run tp @s @e[tag=witherboss,limit=1,sort=nearest]
execute as @a[scores={tpboss7=1..}] at @s if entity @e[tag=witherboss] run tellraw @s {"text":"A duel it shall be - come now, amuse me.","color":"dark_red","bold":true,"italic":false}
execute as @a[scores={tpboss7=1..}] run scoreboard players set @s tpboss7 0
scoreboard players enable @a tpboss7

execute as @e[tag=witherboss] at @s run particle soul ~ ~ ~ 5 0 5 0 10 normal @a
execute as @e[tag=witherboss] at @s run particle soul_fire_flame ~ ~ ~ 1 2 1 0 3 normal @a
execute as @e[tag=witherboss] at @s run particle large_smoke ~ ~ ~ 0.3 0 0.3 0 3 normal @a

execute as @e[tag=witherboss] store result score @s hp run data get entity @s Health
execute as @e[tag=witherboss] if score @s hp > @s hp_prev run scoreboard players operation @s hp_prev = @s hp
execute as @e[tag=witherboss] at @s if score @s hp < @s hp_prev run playsound entity.iron_golem.repair master @a ~ ~ ~ 1 0.5 0
execute as @e[tag=witherboss] if score @s hp < @s hp_prev run scoreboard players operation @s hp_prev = @s hp

execute as @e[tag=witherboss] at @s run scoreboard players add @s bossabilitytimer 1
execute as @e[tag=witherboss] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=witherboss] at @s run scoreboard players add @s abilitytimer3 1
execute as @e[tag=witherboss] at @s run scoreboard players add @s abilitytimer4 1

execute as @e[tag=boss7arena] at @s run execute as @e[type=piglin,distance=..50] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=boss7arena] at @s run execute as @e[type=piglin_brute,distance=..50] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=boss7arena] at @s run execute as @e[type=hoglin,distance=..50] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=boss7arena] at @s run execute as @e[type=zombified_piglin,distance=..50] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=boss7arena] at @s run execute as @e[type=magma_cube,distance=..50] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=witherboss] at @s run execute as @e[type=piglin,distance=..20] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=witherboss] at @s run execute as @e[type=piglin_brute,distance=..20] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=witherboss] at @s run execute as @e[type=hoglin,distance=..20] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=witherboss] at @s run execute as @e[type=zombified_piglin,distance=..20] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=witherboss] at @s run execute as @e[type=magma_cube,distance=..20] at @s run tp @s ~ ~-1000 ~

execute as @e[tag=boss7arena] at @s positioned ~-50 ~ ~-50 unless entity @e[limit=1,sort=nearest,tag=witherboss,dx=100,dy=15,dz=100] run execute as @e[limit=1,sort=nearest,tag=witherboss] at @s run tp @s ^ ^ ^2 facing entity @e[limit=1,sort=nearest,tag=boss7arena]

execute as @e[tag=witherboss,scores={bossabilitytimer=60..,abilitytimer2=..400}] at @s if entity @p[distance=10..] run playsound entity.ravager.roar master @a ~ ~ ~ 1 2 0
execute as @e[tag=witherboss,scores={bossabilitytimer=60..,abilitytimer2=..400}] at @s if entity @p[distance=10..] run scoreboard players set @s bossdialogue 1
execute as @e[tag=witherboss,scores={bossabilitytimer=60..,abilitytimer2=..400}] at @s if entity @p[distance=10..] facing entity @p eyes rotated ~ 45 run function hm:motion-3
execute as @e[tag=witherboss,scores={bossabilitytimer=60..,abilitytimer2=..400}] at @s if entity @p[distance=10..] run scoreboard players set @s bossabilitytimer 0

execute as @e[tag=witherboss,scores={abilitytimer2=400..}] at @s positioned ~ ~ ~ run particle dragon_breath ~ ~ ~ 0 0 0 0.3 10 normal @a
execute as @e[tag=witherboss,scores={abilitytimer2=430}] run scoreboard players set @s bossdialogue 2
execute as @e[tag=witherboss,scores={abilitytimer2=430}] at @s facing entity @p feet rotated ~180 ~ run function hm:motion-4
execute as @e[tag=witherboss,scores={abilitytimer2=450}] at @s run playsound item.trident.throw master @a ~ ~ ~ 5 0.5
execute as @e[tag=witherboss,scores={abilitytimer2=450}] at @s run summon armor_stand ~ ~ ~ {Tags:["shadowslash"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=witherboss,scores={abilitytimer2=450}] at @s run execute as @e[tag=shadowslash,limit=1,sort=nearest] at @s run tp @s ^ ^1 ^0.1 facing entity @p eyes
execute as @e[tag=witherboss,scores={abilitytimer2=460}] at @s run playsound item.trident.throw master @a ~ ~ ~ 5 0.5
execute as @e[tag=witherboss,scores={abilitytimer2=460}] at @s run summon armor_stand ~ ~ ~ {Tags:["shadowslash"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=witherboss,scores={abilitytimer2=460}] at @s run execute as @e[tag=shadowslash,limit=1,sort=nearest] at @s run tp @s ^ ^1 ^0.1 facing entity @p eyes
execute as @e[tag=witherboss,scores={abilitytimer2=470}] at @s run playsound item.trident.throw master @a ~ ~ ~ 5 0.5
execute as @e[tag=witherboss,scores={abilitytimer2=470}] at @s run summon armor_stand ~ ~ ~ {Tags:["shadowslash"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=witherboss,scores={abilitytimer2=470}] at @s run execute as @e[tag=shadowslash,limit=1,sort=nearest] at @s run tp @s ^ ^1 ^0.1 facing entity @p eyes
execute as @e[tag=witherboss,scores={abilitytimer2=480}] at @s facing entity @p eyes run function hm:motion-4
execute as @e[tag=witherboss,scores={abilitytimer2=480..}] run scoreboard players set @s abilitytimer2 0

execute as @e[tag=witherboss,scores={abilitytimer3=330..}] at @s run particle large_smoke ~ ~ ~ 2 0 2 0.3 10 normal @a
execute as @e[tag=witherboss,scores={abilitytimer3=350..}] at @s if entity @p[distance=..10] run particle portal ~ ~ ~ 2 0 2 0.5 100 normal @a
execute as @e[tag=witherboss,scores={abilitytimer3=350..}] at @s if entity @p[distance=..10] run scoreboard players set @s bossdialogue 3
execute as @e[tag=witherboss,scores={abilitytimer3=350..}] at @s if entity @p[distance=..10] if predicate hm:50percent run scoreboard players set @s bossdialogue 4
execute as @e[tag=witherboss,scores={abilitytimer3=350..}] at @s if entity @p[distance=..10] run summon wither_skeleton ~ ~1 ~ {Silent:1b,CustomNameVisible:1b,DeathLootTable:"",PersistenceRequired:1b,Health:50f,Tags:["withershade","armourchecked","weaponchecked"],CustomName:'{"text":"Emperor of Shade","color":"#871700","bold":true,"italic":true}',HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{display:{Name:'{"text":"Darkflame Kingsword","color":"#9C001F","bold":true,"italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:4s},{id:"minecraft:knockback",lvl:3s},{id:"minecraft:looting",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}},{}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:255s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5846327},Unbreakable:1b}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:fire_protection",lvl:40s},{id:"minecraft:projectile_protection",lvl:40s}]}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:12,Amplifier:0b,Duration:9999999,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:50},{Name:"generic.follow_range",Base:500},{Name:"generic.movement_speed",Base:0.3},{Name:"generic.attack_damage",Base:1},{Name:"generic.armor",Base:-200},{Name:"generic.armor_toughness",Base:-200}]}
execute as @e[tag=witherboss,scores={abilitytimer3=350..}] at @s if entity @p[distance=..10] run summon wither_skeleton ~ ~1 ~ {Silent:1b,CustomNameVisible:1b,DeathLootTable:"",PersistenceRequired:1b,Health:50f,Tags:["withershade","armourchecked","weaponchecked"],CustomName:'{"text":"Emperor of Shade","color":"#871700","bold":true,"italic":true}',HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{display:{Name:'{"text":"Darkflame Kingsword","color":"#9C001F","bold":true,"italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:4s},{id:"minecraft:knockback",lvl:3s},{id:"minecraft:looting",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}},{}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:255s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5846327},Unbreakable:1b}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:fire_protection",lvl:40s},{id:"minecraft:projectile_protection",lvl:40s}]}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:12,Amplifier:0b,Duration:9999999,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:50},{Name:"generic.follow_range",Base:500},{Name:"generic.movement_speed",Base:0.3},{Name:"generic.attack_damage",Base:1},{Name:"generic.armor",Base:-200},{Name:"generic.armor_toughness",Base:-200}]}
execute as @e[tag=witherboss,scores={abilitytimer3=350..}] at @s if entity @p[distance=..10] run summon wither_skeleton ~ ~1 ~ {Silent:1b,CustomNameVisible:1b,DeathLootTable:"",PersistenceRequired:1b,Health:50f,Tags:["withershade","armourchecked","weaponchecked"],CustomName:'{"text":"Emperor of Shade","color":"#871700","bold":true,"italic":true}',HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{display:{Name:'{"text":"Darkflame Kingsword","color":"#9C001F","bold":true,"italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:4s},{id:"minecraft:knockback",lvl:3s},{id:"minecraft:looting",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}},{}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:255s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5846327},Unbreakable:1b}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:fire_protection",lvl:40s},{id:"minecraft:projectile_protection",lvl:40s}]}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:12,Amplifier:0b,Duration:9999999,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:50},{Name:"generic.follow_range",Base:500},{Name:"generic.movement_speed",Base:0.3},{Name:"generic.attack_damage",Base:1},{Name:"generic.armor",Base:-200},{Name:"generic.armor_toughness",Base:-200}]}
execute as @e[tag=witherboss,scores={abilitytimer3=350..}] at @s if entity @p[distance=..10] run scoreboard players set @s abilitytimer3 0

execute as @e[tag=witherboss,scores={bossdialogue=1..}] unless score @s bossdialogue = @s bossdialoguecheck at @s run playsound entity.wither.ambient master @a ~ ~ ~ 10 0.5 0
execute as @e[tag=witherboss,scores={bossdialogue=1}] unless score @s bossdialoguecheck matches 1 at @s run tellraw @a[distance=..100] {"text":"Dare you stand against darkness?","color":"dark_red","bold":true,"italic":false}
execute as @e[tag=witherboss,scores={bossdialogue=2}] unless score @s bossdialoguecheck matches 2 at @s run tellraw @a[distance=..100] {"text":"Show me your prowess, evade my blows.","color":"dark_red","bold":true,"italic":false}
execute as @e[tag=witherboss,scores={bossdialogue=3}] unless score @s bossdialoguecheck matches 3 at @s run tellraw @a[distance=..100] {"text":"Rise, shadows, to put an end to their agony.","color":"dark_red","bold":true,"italic":false}
execute as @e[tag=witherboss,scores={bossdialogue=4}] unless score @s bossdialoguecheck matches 4 at @s run tellraw @a[distance=..100] {"text":"Those who fear the darkness shall be consumed by it.","color":"dark_red","bold":true,"italic":false}
execute as @e[tag=witherboss] at @s run scoreboard players operation @s bossdialoguecheck = @s bossdialogue