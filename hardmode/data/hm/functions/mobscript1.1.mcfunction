attribute @s generic.movement_speed base set 0.45

execute as @s[scores={bossabilitytimer=0..20}] at @s run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.3 10 normal @a
execute as @s[scores={bossabilitytimer=20}] unless entity @s[scores={abilitytimer3=80..180}] at @s run tp @s ~ ~ ~ ~45 ~
execute as @s[scores={bossabilitytimer=20..25}] unless entity @s[scores={abilitytimer3=80..180}] run function hm:mobscript1.2
execute as @s[scores={bossabilitytimer=20..25}] unless entity @s[scores={abilitytimer3=80..180}] at @s run tp @s ~ ~ ~ ~-12.5 ~
execute as @s[scores={bossabilitytimer=20..25}] unless entity @s[scores={abilitytimer3=80..180}] run function hm:mobscript1.2
execute as @s[scores={bossabilitytimer=20}] unless entity @s[scores={abilitytimer3=80..180}] run playsound entity.wither.shoot master @a ~ ~ ~ 1 2
execute as @s[scores={bossabilitytimer=20..25}] unless entity @s[scores={abilitytimer3=80..180}] at @s run tp @s ~ ~ ~ ~-12.5 ~
execute as @s[scores={bossabilitytimer=30}] unless entity @s[scores={abilitytimer3=80..180}] at @s run tp @s ~ ~ ~ ~-45 ~
execute as @s[scores={bossabilitytimer=30..35}] unless entity @s[scores={abilitytimer3=80..180}] run function hm:mobscript1.2
execute as @s[scores={bossabilitytimer=30..35}] unless entity @s[scores={abilitytimer3=80..180}] at @s run tp @s ~ ~ ~ ~12.5 ~
execute as @s[scores={bossabilitytimer=30..35}] unless entity @s[scores={abilitytimer3=80..180}] run function hm:mobscript1.2
execute as @s[scores={bossabilitytimer=30..35}] unless entity @s[scores={abilitytimer3=80..180}] at @s run tp @s ~ ~ ~ ~12.5 ~
execute as @s[scores={bossabilitytimer=30}] unless entity @s[scores={abilitytimer3=80..180}] run playsound entity.wither.shoot master @a ~ ~ ~ 1 2

execute as @s[scores={abilitytimer4=50..70}] at @s run particle dust_color_transition 1.000 0.000 0.400 2 0.412 0.000 0.000 ~ ~ ~ 1 1 1 0.3 20 normal @a
execute as @s[scores={abilitytimer4=50..70}] at @s run playsound entity.zombie.death master @a ~ ~ ~ 1 2
execute as @s[scores={abilitytimer4=70}] at @s run scoreboard players set @s abilitytimer3 300
execute as @s[scores={abilitytimer4=70}] at @s if entity @p[distance=5..] at @p run summon armor_stand ~ ~ ~ {Tags:["bindingleap"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @s[scores={abilitytimer4=70}] at @s if entity @p[distance=5..] at @p run effect give @s resistance 5 5
execute as @s[scores={abilitytimer4=70..80}] at @s if entity @e[tag=bindingleap] run tp @s ~ ~2 ~ facing entity @e[limit=1,sort=nearest,tag=bindingleap]
execute as @s[scores={abilitytimer4=70..80}] at @s if entity @e[tag=bindingleap] run tp @s ~ ~2 ~ facing entity @e[limit=1,sort=nearest,tag=bindingleap]
execute as @s[scores={abilitytimer4=90..100}] at @s if entity @e[tag=bindingleap] run tp @s ^ ^-1 ^1.8 facing entity @e[limit=1,sort=nearest,tag=bindingleap]
execute as @s[scores={abilitytimer4=90..100}] at @s if entity @e[tag=bindingleap] run tp @s ^ ^-1 ^1.8 facing entity @e[limit=1,sort=nearest,tag=bindingleap]
execute as @s[scores={abilitytimer4=90..100}] at @s if entity @e[distance=..3,tag=bindingleap] run effect give @e[type=!player,distance=..5] resistance 4 5
execute as @s[scores={abilitytimer4=90..100}] at @s if entity @e[distance=..3,tag=bindingleap] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:3b,Fuse:0,ignited:1b,CustomName:'{"text":"Unholy Bash","color":"gray","bold":true}'}

execute as @s[scores={abilitytimer3=80..100}] at @s run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal
execute as @s[scores={abilitytimer3=80..100}] at @s if entity @p[distance=..40] if block ^ ^1 ^-1 air run tp @s ^ ^0.5 ^-1 facing entity @p feet
execute as @s[scores={abilitytimer3=80..100}] at @s if entity @p[distance=..40] if block ^ ^2 ^-1 water run tp @s ^ ^0.8 ^-1 facing entity @p feet
execute as @s[scores={abilitytimer3=80}] at @s run playsound entity.firework_rocket.launch master @a ~ ~ ~ 4 1
execute as @s[scores={abilitytimer3=80..100}] at @s run playsound item.trident.riptide_3 master @a ~ ~ ~ 1 2

execute as @s[scores={abilitytimer3=120..130}] at @s if entity @p[distance=15..40] if block ^ ^1 ^1 air run tp @s ^ ^ ^1 facing entity @p feet
execute as @s[scores={abilitytimer3=120..130}] at @s if entity @p[distance=15..40] if block ^ ^2 ^1 water run tp @s ^ ^0.3 ^1 facing entity @p feet
execute as @s[scores={abilitytimer3=130..180}] at @s run effect give @s strength 1 1
execute as @s[scores={abilitytimer3=130..135}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @s[scores={abilitytimer3=130..140}] at @s if entity @p[distance=..40] if block ^ ^1 ^1 air run tp @s ^ ^ ^1.1 ~ ~
execute as @s[scores={abilitytimer3=130..140}] at @s if entity @p[distance=..40] if block ^ ^2 ^1 water run tp @s ^ ^0.3 ^1.8 ~ ~
execute as @s[scores={abilitytimer3=130}] at @s run playsound entity.firework_rocket.launch master @a ~ ~ ~ 4 2
execute as @s[scores={abilitytimer3=130..140}] at @s run playsound entity.wither.break_block master @a ~ ~ ~ 0.5 2
execute as @s[scores={abilitytimer3=140..145}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @s[scores={abilitytimer3=140..150}] at @s if entity @p[distance=..40] if block ^ ^1 ^1 air run tp @s ^ ^ ^1.1 ~ ~
execute as @s[scores={abilitytimer3=140..150}] at @s if entity @p[distance=..40] if block ^ ^2 ^1 water run tp @s ^ ^0.3 ^1.8 ~ ~
execute as @s[scores={abilitytimer3=140}] at @s run playsound entity.firework_rocket.launch master @a ~ ~ ~ 4 2
execute as @s[scores={abilitytimer3=140..150}] at @s run playsound entity.wither.break_block master @a ~ ~ ~ 0.5 2
execute as @s[scores={abilitytimer3=150..155}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @s[scores={abilitytimer3=150..160}] at @s if entity @p[distance=..40] if block ^ ^1 ^1 air run tp @s ^ ^ ^1.1 ~ ~
execute as @s[scores={abilitytimer3=150..160}] at @s if entity @p[distance=..40] if block ^ ^2 ^1 water run tp @s ^ ^0.3 ^1.8 ~ ~
execute as @s[scores={abilitytimer3=150}] at @s run playsound entity.firework_rocket.launch master @a ~ ~ ~ 4 2
execute as @s[scores={abilitytimer3=150..160}] at @s run playsound entity.wither.break_block master @a ~ ~ ~ 0.5 2
execute as @s[scores={abilitytimer3=160..165}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @s[scores={abilitytimer3=160..170}] at @s if entity @p[distance=..40] if block ^ ^1 ^1 air run tp @s ^ ^ ^1.1 ~ ~
execute as @s[scores={abilitytimer3=160..170}] at @s if entity @p[distance=..40] if block ^ ^2 ^1 water run tp @s ^ ^0.3 ^1.8 ~ ~
execute as @s[scores={abilitytimer3=160}] at @s run playsound entity.firework_rocket.launch master @a ~ ~ ~ 4 2
execute as @s[scores={abilitytimer3=160..170}] at @s run playsound entity.wither.break_block master @a ~ ~ ~ 0.5 2
execute as @s[scores={abilitytimer3=170..175}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @s[scores={abilitytimer3=170..180}] at @s if entity @p[distance=..40] if block ^ ^1 ^1 air run tp @s ^ ^ ^1.1 ~ ~
execute as @s[scores={abilitytimer3=170..180}] at @s if entity @p[distance=..40] if block ^ ^2 ^1 water run tp @s ^ ^0.3 ^1.8 ~ ~
execute as @s[scores={abilitytimer3=170}] at @s run playsound entity.firework_rocket.launch master @a ~ ~ ~ 4 2
execute as @s[scores={abilitytimer3=170..180}] at @s run playsound entity.wither.break_block master @a ~ ~ ~ 0.5 2

execute as @s run scoreboard players add @s abilitytimer5 1
execute as @s[scores={abilitytimer5=900..1000}] at @s run particle dust_color_transition 0.812 0.204 0.204 2 0.451 0.004 0.169 ~ ~ ~ 2 2 2 0.3 20 normal @a
execute as @s[scores={abilitytimer5=900..1000}] at @s anchored feet run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.75 5 normal @a
execute as @s[scores={abilitytimer5=900}] at @s run playsound entity.ender_dragon.growl master @a ~ ~ ~ 20 2
execute as @s[scores={abilitytimer5=900}] at @s run tellraw @a [{"text":"Dreadlich Centurion is about to use ","color":"#941E1E","bold":false,"italic":false},{"text":"Pulsing Corruption: Crimson Outbreak!","color":"red","bold":true,"italic":false}]
execute as @s[scores={abilitytimer5=1000}] at @s run playsound item.totem.use master @a ~ ~ ~ 10 1
execute as @s[scores={abilitytimer5=1000}] at @s run summon armor_stand ~ ~ ~ {Tags:["crimsonoutbreak"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @s[scores={abilitytimer5=1000..1250}] at @s run effect give @e[type=!player,distance=..10] resistance 1 10
execute as @s[scores={abilitytimer5=1000..1250}] at @s run execute as @e[distance=..20,type=!player] run attribute @s generic.knockback_resistance modifier add 32ad2f66-474e-4d1e-ae81-ca77667a1c86 "crimsonoutbreak" 100 add
execute as @s[scores={abilitytimer5=1000..1250}] at @s run playsound entity.wither.ambient master @a ~ ~ ~ 10 0.5
execute as @s[scores={abilitytimer5=..1000}] at @s run execute as @e[distance=..20,type=!player] run attribute @s generic.knockback_resistance modifier remove 32ad2f66-474e-4d1e-ae81-ca77667a1c86
execute as @s[scores={abilitytimer5=1000..1250}] at @s run particle lava ~ ~ ~ 0.5 0.5 0.5 0.5 10 normal @a
execute as @s[scores={abilitytimer5=1000..1250}] at @s anchored eyes facing entity @e[tag=crimsonoutbreak,sort=nearest,limit=1] feet positioned ^ ^ ^1 run particle dust_color_transition 0.5 0 0.1 6 0.2 0 0.05 ~ ~ ~ 0.7 0.7 0.7 0 5 normal @a
execute as @s[scores={abilitytimer5=1000..1250}] at @s anchored eyes facing entity @e[tag=crimsonoutbreak,sort=nearest,limit=1] feet positioned ^ ^ ^1 if entity @p[distance=..3] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:1b,Fuse:0,ignited:1b,CustomName:'{"text":"Pulsing Corruption: Crimson Outbreak","color":"dark_red","bold":true,"italic":false}'}
execute as @s[scores={abilitytimer5=1000..1250}] at @s anchored eyes facing entity @e[tag=crimsonoutbreak,sort=nearest,limit=1] feet positioned ^ ^ ^4 run particle dust_color_transition 0.5 0 0.1 6 0.2 0 0.05 ~ ~ ~ 0.7 0.7 0.7 0 5 normal @a
execute as @s[scores={abilitytimer5=1000..1250}] at @s anchored eyes facing entity @e[tag=crimsonoutbreak,sort=nearest,limit=1] feet positioned ^ ^ ^4 if entity @p[distance=..3] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:1b,Fuse:0,ignited:1b,CustomName:'{"text":"Pulsing Corruption: Crimson Outbreak","color":"dark_red","bold":true,"italic":false}'}
execute as @s[scores={abilitytimer5=1000..1250}] at @s anchored eyes facing entity @e[tag=crimsonoutbreak,sort=nearest,limit=1] feet positioned ^ ^ ^7 run particle dust_color_transition 0.5 0 0.1 6 0.2 0 0.05 ~ ~ ~ 0.7 0.7 0.7 0 5 normal @a
execute as @s[scores={abilitytimer5=1000..1250}] at @s anchored eyes facing entity @e[tag=crimsonoutbreak,sort=nearest,limit=1] feet positioned ^ ^ ^7 if entity @p[distance=..3] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:1b,Fuse:0,ignited:1b,CustomName:'{"text":"Pulsing Corruption: Crimson Outbreak","color":"dark_red","bold":true,"italic":false}'}
execute as @s[scores={abilitytimer5=1000..1250}] at @s anchored eyes facing entity @e[tag=crimsonoutbreak,sort=nearest,limit=1] feet positioned ^ ^ ^10 run particle dust_color_transition 0.5 0 0.1 6 0.2 0 0.05 ~ ~ ~ 0.7 0.7 0.7 0 5 normal @a
execute as @s[scores={abilitytimer5=1000..1250}] at @s anchored eyes facing entity @e[tag=crimsonoutbreak,sort=nearest,limit=1] feet positioned ^ ^ ^10 if entity @p[distance=..3] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:1b,Fuse:0,ignited:1b,CustomName:'{"text":"Pulsing Corruption: Crimson Outbreak","color":"dark_red","bold":true,"italic":false}'}
execute as @s[scores={abilitytimer5=1000..1250}] at @s anchored eyes facing entity @e[tag=crimsonoutbreak,sort=nearest,limit=1] feet positioned ^ ^ ^13 run particle dust_color_transition 0.5 0 0.1 6 0.2 0 0.05 ~ ~ ~ 0.7 0.7 0.7 0 5 normal @a
execute as @s[scores={abilitytimer5=1000..1250}] at @s anchored eyes facing entity @e[tag=crimsonoutbreak,sort=nearest,limit=1] feet positioned ^ ^ ^13 if entity @p[distance=..3] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:1b,Fuse:0,ignited:1b,CustomName:'{"text":"Pulsing Corruption: Crimson Outbreak","color":"dark_red","bold":true,"italic":false}'}
execute as @s[scores={abilitytimer5=1000..1250}] at @s anchored eyes facing entity @e[tag=crimsonoutbreak,sort=nearest,limit=1] feet positioned ^ ^ ^16 run particle dust_color_transition 0.5 0 0.1 6 0.2 0 0.05 ~ ~ ~ 0.7 0.7 0.7 0 5 normal @a
execute as @s[scores={abilitytimer5=1000..1250}] at @s anchored eyes facing entity @e[tag=crimsonoutbreak,sort=nearest,limit=1] feet positioned ^ ^ ^16 if entity @p[distance=..3] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:1b,Fuse:0,ignited:1b,CustomName:'{"text":"Pulsing Corruption: Crimson Outbreak","color":"dark_red","bold":true,"italic":false}'}
execute as @s[scores={abilitytimer5=1000..1250}] at @s anchored eyes facing entity @e[tag=crimsonoutbreak,sort=nearest,limit=1] feet positioned ^ ^ ^19 run particle dust_color_transition 0.5 0 0.1 6 0.2 0 0.05 ~ ~ ~ 0.7 0.7 0.7 0 5 normal @a
execute as @s[scores={abilitytimer5=1000..1250}] at @s anchored eyes facing entity @e[tag=crimsonoutbreak,sort=nearest,limit=1] feet positioned ^ ^ ^19 if entity @p[distance=..3] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:1b,Fuse:0,ignited:1b,CustomName:'{"text":"Pulsing Corruption: Crimson Outbreak","color":"dark_red","bold":true,"italic":false}'}
execute as @s[scores={abilitytimer5=1000..1250}] at @s if entity @p[distance=20..30] run tp @s ^ ^ ^1 facing entity @p[distance=20..30]
execute as @s[scores={abilitytimer5=1250..}] at @s run scoreboard players set @s abilitytimer5 0

execute as @e[tag=crimsonoutbreak] run scoreboard players add @s abilitytimer2 1
execute as @e[tag=crimsonoutbreak,scores={abilitytimer2=250..}] run kill @s
execute as @e[tag=crimsonoutbreak] at @s run tp @s ^ ^ ^0.4 facing entity @p feet