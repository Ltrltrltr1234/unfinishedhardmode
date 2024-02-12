#not exactly a mob, just an attack script for hypercharged devastator's aoe lightning and other stuff

execute as @e[tag=aoelightning] run scoreboard players add @s abilitytimer2 1
execute as @e[tag=aoelightning,scores={abilitytimer2=1}] at @s run playsound entity.wither.shoot master @a ~ ~ ~ 2
execute as @e[tag=aoelightning] at @s run particle dust 0.149 0.631 0.624 2 ~ ~ ~ 1.5 0 1.5 0 25 normal @a
execute as @e[tag=aoelightning] at @s run tp @s ~ ~ ~ ~14 ~
execute as @e[tag=aoelightning] at @s run particle dust 0.420 1.000 0.941 2 ^ ^ ^4 0.1 0.1 0.1 0 3 normal @a
execute as @e[tag=aoelightning] at @s run particle dust 0.420 1.000 0.941 2 ^ ^ ^-4 0.1 0.1 0.1 0 3 normal @a
execute as @e[tag=aoelightning] at @s run particle dust 0.420 1.000 0.941 2 ^4 ^ ^ 0.1 0.1 0.1 0 3 normal @a
execute as @e[tag=aoelightning] at @s run particle dust 0.420 1.000 0.941 2 ^-4 ^ ^ 0.1 0.1 0.1 0 3 normal @a
execute as @e[tag=aoelightning] at @s run particle firework ~ ~ ~ 0 0 0 0.1 5 normal @a
execute as @e[tag=aoelightning,scores={abilitytimer2=20..}] at @s run effect give @e[type=!player,distance=..4] resistance 1 10 true
execute as @e[tag=aoelightning,scores={abilitytimer2=20..}] at @s run summon lightning_bolt
execute as @e[tag=aoelightning,scores={abilitytimer2=20..}] at @s run summon lightning_bolt
execute as @e[tag=aoelightning,scores={abilitytimer2=20..}] at @s run summon lightning_bolt
execute as @e[tag=aoelightning,scores={abilitytimer2=20..}] at @s run effect give @a[distance=..3] slowness 3 4 true
execute as @e[tag=aoelightning,scores={abilitytimer2=20..}] at @s run effect give @a[distance=..3] instant_damage 1 1 true
execute as @e[tag=aoelightning,scores={abilitytimer2=20..}] at @s run kill @s

execute as @e[tag=thunderstrikes] run scoreboard players add @s abilitytimer2 1
execute as @e[tag=thunderstrikes,scores={abilitytimer2=1}] at @s run tp @s ^ ^ ^ facing entity @p
execute as @e[tag=thunderstrikes,scores={abilitytimer2=10}] at @s positioned ^ ^ ^4 run particle dust_color_transition 0.420 1.000 0.941 4 0.000 0.000 0.220 ~ ~ ~ 1 1 1 0.2 50 normal @a
execute as @e[tag=thunderstrikes,scores={abilitytimer2=10}] at @s positioned ^ ^ ^4 run particle large_smoke ~ ~ ~ 1 1 1 0.3 100
execute as @e[tag=thunderstrikes,scores={abilitytimer2=10}] at @s positioned ^ ^ ^4 run playsound entity.zombie_villager.cure master @a ~ ~ ~ 2 2
execute as @e[tag=thunderstrikes,scores={abilitytimer2=10}] at @s positioned ^ ^ ^4 run particle firework ~ ~5 ~ 0 5 0 0 200 normal @a
execute as @e[tag=thunderstrikes,scores={abilitytimer2=10}] at @s positioned ^ ^ ^4 run summon creeper ~ ~1 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:3b,Fuse:0,ignited:1b,CustomName:'{"text":"Thunderous Strikes","color":"aqua","bold":true}'}
execute as @e[tag=thunderstrikes,scores={abilitytimer2=20}] at @s positioned ^ ^ ^9 run particle dust_color_transition 0.420 1.000 0.941 4 0.000 0.000 0.220 ~ ~ ~ 1 1 1 0.2 50 normal @a
execute as @e[tag=thunderstrikes,scores={abilitytimer2=20}] at @s positioned ^ ^ ^9 run particle large_smoke ~ ~ ~ 1 1 1 0.3 100
execute as @e[tag=thunderstrikes,scores={abilitytimer2=20}] at @s positioned ^ ^ ^9 run playsound entity.zombie_villager.cure master @a ~ ~ ~ 2 2
execute as @e[tag=thunderstrikes,scores={abilitytimer2=20}] at @s positioned ^ ^ ^9 run particle firework ~ ~5 ~ 0 5 0 0 200 normal @a
execute as @e[tag=thunderstrikes,scores={abilitytimer2=20}] at @s positioned ^ ^ ^9 run summon creeper ~ ~1 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:3b,Fuse:0,ignited:1b,CustomName:'{"text":"Thunderous Strikes","color":"aqua","bold":true}'}
execute as @e[tag=thunderstrikes,scores={abilitytimer2=30}] at @s positioned ^ ^ ^14 run particle dust_color_transition 0.420 1.000 0.941 4 0.000 0.000 0.220 ~ ~ ~ 1 1 1 0.2 50 normal @a
execute as @e[tag=thunderstrikes,scores={abilitytimer2=30}] at @s positioned ^ ^ ^14 run particle large_smoke ~ ~ ~ 1 1 1 0.3 100
execute as @e[tag=thunderstrikes,scores={abilitytimer2=30}] at @s positioned ^ ^ ^14 run playsound entity.zombie_villager.cure master @a ~ ~ ~ 2 2
execute as @e[tag=thunderstrikes,scores={abilitytimer2=30}] at @s positioned ^ ^ ^14 run particle firework ~ ~5 ~ 0 5 0 0 200 normal @a
execute as @e[tag=thunderstrikes,scores={abilitytimer2=30}] at @s positioned ^ ^ ^14 run summon creeper ~ ~1 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:2b,Fuse:0,ignited:1b,CustomName:'{"text":"Thunderous Strikes","color":"aqua","bold":true}'}
execute as @e[tag=thunderstrikes,scores={abilitytimer2=40}] at @s positioned ^ ^ ^19 run particle dust_color_transition 0.420 1.000 0.941 4 0.000 0.000 0.220 ~ ~ ~ 1 1 1 0.2 50 normal @a
execute as @e[tag=thunderstrikes,scores={abilitytimer2=40}] at @s positioned ^ ^ ^19 run particle large_smoke ~ ~ ~ 1 1 1 0.3 100
execute as @e[tag=thunderstrikes,scores={abilitytimer2=40}] at @s positioned ^ ^ ^19 run playsound entity.zombie_villager.cure master @a ~ ~ ~ 2 2
execute as @e[tag=thunderstrikes,scores={abilitytimer2=40}] at @s positioned ^ ^ ^19 run particle firework ~ ~5 ~ 0 5 0 0 200 normal @a
execute as @e[tag=thunderstrikes,scores={abilitytimer2=40}] at @s positioned ^ ^ ^19 run summon creeper ~ ~1 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:2b,Fuse:0,ignited:1b,CustomName:'{"text":"Thunderous Strikes","color":"aqua","bold":true}'}
execute as @e[tag=thunderstrikes,scores={abilitytimer2=40..}] run kill @s

execute as @e[tag=stormraze] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=stormraze] at @s run scoreboard players add @s abilitytimer3 1
execute as @e[tag=stormraze,scores={abilitytimer3=10..}] at @s if block ^ ^ ^1 air run summon armor_stand ~ ~ ~ {Tags:["srp"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=stormraze,scores={abilitytimer3=10..}] at @s run scoreboard players set @s abilitytimer3 0
execute as @e[tag=stormraze] at @s run playsound block.blastfurnace.fire_crackle master @a ~ ~ ~ 5 2
execute as @e[tag=stormraze] at @s run playsound block.fire.extinguish master @a ~ ~ ~ 2 2
execute as @e[tag=stormraze] at @s positioned ^ ^ ^ run particle end_rod ~ ~ ~ 0 0 0 0.2 15 normal @a
execute as @e[tag=stormraze] at @s positioned ^ ^ ^1 run particle dust 0.306 0.741 0.886 2 ~ ~ ~ 0.05 0.05 0.05 0 10 normal @a
execute as @e[tag=stormraze] at @s positioned ^ ^ ^ run particle dust 0.243 0.506 0.733 2 ~ ~ ~ 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=stormraze] at @s positioned ^ ^ ^-1 run particle dust 0.133 0.231 0.62 2 ~ ~ ~ 0.2 0.2 0.2 0 10 normal @a
execute as @e[tag=stormraze] at @s positioned ^ ^ ^-3 run particle dust 0.18 0.11 0.518 4 ~ ~ ~ 0.4 0.4 0.4 0 10 normal @a
execute as @e[tag=stormraze] at @s positioned ^ ^ ^-4 run particle dust 0.082 0.165 0.427 2 ~ ~ ~ 0.1 0.1 0.1 0 5 normal @a
execute as @e[tag=stormraze] at @s positioned ^ ^ ^-5 run particle dust 0.082 0.165 0.427 2 ~ ~ ~ 0.1 0.1 0.1 0 5 normal @a
execute as @e[tag=stormraze] at @s positioned ^ ^ ^-6 run particle dust 0.082 0.165 0.427 2 ~ ~ ~ 0.1 0.1 0.1 0 5 normal @a
execute as @e[tag=stormraze] at @s positioned ^ ^ ^-7 run particle dust 0.082 0.165 0.427 2 ~ ~ ~ 0.1 0.1 0.1 0 5 normal @a
execute as @e[tag=stormraze] at @s positioned ^ ^ ^-8 run particle dust 0.141 0.18 0.318 2 ~ ~ ~ 0.1 0.1 0.1 0 5 normal @a
execute as @e[tag=stormraze] at @s positioned ^ ^ ^-9 run particle dust 0.125 0.141 0.192 2 ~ ~ ~ 0.1 0.1 0.1 0 5 normal @a
execute as @e[tag=stormraze] at @s positioned ^ ^ ^-10 run particle smoke ~ ~ ~ 0 0 0 0.3 20 normal @a
execute as @e[tag=stormraze,scores={abilitytimer2=1}] at @s run playsound entity.ravager.roar master @a ~ ~ ~ 10 2
execute as @e[tag=stormraze,scores={abilitytimer2=1}] at @s run particle firework ~ ~ ~ 0 0 0 1 100 normal @a
execute as @e[tag=stormraze,scores={abilitytimer2=1..70}] at @s run tp @s ^ ^ ^0.5 0 -90
execute as @e[tag=stormraze,scores={abilitytimer2=70}] at @s run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.5 80 normal @a
execute as @e[tag=stormraze,scores={abilitytimer2=70}] at @s at @p positioned ~ ~20 ~ run tp @s ~ ~ ~
execute as @e[tag=stormraze,scores={abilitytimer2=70}] at @s run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.5 80 normal @a
execute as @e[tag=stormraze,scores={abilitytimer2=71..}] at @s if block ^ ^ ^1 air run tp @s ^ ^ ^2 0 90
execute as @e[tag=stormraze,scores={abilitytimer2=71..}] at @s unless block ^ ^ ^1 air run scoreboard players add @s abilitytimer4 1
execute as @e[tag=stormraze,scores={abilitytimer2=250..}] run kill @s
execute as @e[tag=stormraze,scores={abilitytimer4=1}] at @s run particle large_smoke ~ ~ ~ 0 0 0 0.5 100 normal @a
execute as @e[tag=stormraze,scores={abilitytimer4=1}] at @s run particle explosion ~ ~ ~ 1 1 1 0 50 normal @a
execute as @e[tag=stormraze,scores={abilitytimer4=1}] at @s run playsound entity.generic.explode master @a ~ ~ ~ 5 1
execute as @e[tag=stormraze,scores={abilitytimer4=1}] at @s run playsound entity.zombie.attack_iron_door master @a ~ ~ ~ 5 1
execute as @e[tag=stormraze,scores={abilitytimer4=1}] at @s run effect give @a[distance=..3] instant_damage 1 2
execute as @e[tag=stormraze,scores={abilitytimer4=40..45}] at @s run particle end_rod ~ ~ ~ 0 0 0 1 50 normal @a
execute as @e[tag=stormraze,scores={abilitytimer4=40..45}] at @s run particle dust_color_transition 0.306 0.741 0.886 2 0.082 0.165 0.427 ~ ~ ~ 5 0 5 0 200 normal @a
execute as @e[tag=stormraze,scores={abilitytimer4=40..45}] at @s run particle explosion ~ ~ ~ 2 2 2 0 20 normal @a
execute as @e[tag=stormraze,scores={abilitytimer4=40..45}] at @s run playsound entity.generic.explode master @a ~ ~ ~ 5 1
execute as @e[tag=stormraze,scores={abilitytimer4=40..45}] at @s run playsound entity.zombie_villager.cure master @a ~ ~ ~ 5 1
execute as @e[tag=stormraze,scores={abilitytimer4=40}] at @s run effect give @a[distance=..10] instant_damage 1 2
execute as @e[tag=stormraze,scores={abilitytimer4=45..}] at @s run kill @s

execute as @e[tag=srp] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=srp] at @s run tp @s ~ ~ ~ ~14 ~
execute as @e[tag=srp] at @s run particle dust_color_transition 0.306 0.741 0.886 2 0.082 0.165 0.427 ^ ^ ^2 0.1 0.1 0.1 0 3 normal @a
execute as @e[tag=srp] at @s run particle dust_color_transition 0.306 0.741 0.886 2 0.082 0.165 0.427 ^ ^ ^-2 0.1 0.1 0.1 0 3 normal @a
execute as @e[tag=srp] at @s run particle dust_color_transition 0.306 0.741 0.886 2 0.082 0.165 0.427 ^2 ^ ^ 0.1 0.1 0.1 0 3 normal @a
execute as @e[tag=srp] at @s run particle dust_color_transition 0.306 0.741 0.886 2 0.082 0.165 0.427 ^-2 ^ ^ 0.1 0.1 0.1 0 3 normal @a
execute as @e[tag=srp,scores={abilitytimer2=10..}] at @s run kill @s