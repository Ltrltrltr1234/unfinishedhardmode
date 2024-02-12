#not exactly a mob, just an attack script for hypercharged devastator's flash bolt and other stuff

execute as @e[tag=flashbolt] run scoreboard players add @s abilitytimer2 1
execute as @e[tag=flashbolt,scores={abilitytimer2=1}] at @s run playsound block.end_portal_frame.fill master @a ~ ~ ~ 3 1
execute as @e[tag=flashbolt] at @s run tp @s ^ ^ ^1
execute as @e[tag=flashbolt] at @s if entity @p[distance=..2] run tag @s add projdead
execute as @e[tag=flashbolt] at @s unless block ^ ^1 ^0.1 air run tag @s add projdead
execute as @e[tag=flashbolt,tag=projdead] at @s run effect give @e[type=!player,distance=..5] resistance 1 10 true
execute as @e[tag=flashbolt,tag=projdead] at @s run summon firework_rocket ^ ^ ^1 {NoGravity:1b,Silent:1b,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Colors:[I;8257526]},{Type:0,Flicker:1b,Colors:[I;8257526]},{Type:0,Flicker:1b,Colors:[I;8257526]},{Type:0,Flicker:1b,Colors:[I;8257526]},{Type:0,Flicker:1b,Colors:[I;8257526]},{Type:0,Flicker:1b,Colors:[I;8257526]},{Type:0,Flicker:1b,Colors:[I;8257526]}]}}}}
execute as @e[tag=flashbolt,tag=projdead] at @s run effect give @a[distance=..3] instant_damage 1 1
execute as @e[tag=flashbolt,tag=projdead] at @s run particle electric_spark ~ ~ ~ 0.2 0.2 0.2 0.3 50 normal @a
execute as @e[tag=flashbolt,tag=projdead] at @s run playsound entity.lightning_bolt.impact master @a ~ ~ ~ 1 2 0
execute as @e[tag=flashbolt,tag=projdead] at @s run kill @s
execute as @e[tag=flashbolt] at @s run particle dust_color_transition 0.420 1.000 0.941 4 0.000 0.000 0.220 ~ ~ ~ 0.15 0.15 0.15 0 1 normal
execute as @e[tag=flashbolt] at @s run particle dust_color_transition 0.420 1.000 0.941 2 0.000 0.000 0.220 ^ ^ ^0.5 0 0 0 0 3 normal
execute as @e[tag=flashbolt] at @s run particle dust_color_transition 0.420 1.000 0.941 1 0.000 0.000 0.220 ^ ^ ^1 0 0 0 0 2 normal
execute as @e[tag=flashbolt] at @s run particle dust_color_transition 0.420 1.000 0.941 1 0.000 0.000 0.220 ^ ^ ^1.5 0 0 0 0 1 normal
execute as @e[tag=flashbolt] at @s run particle electric_spark ~ ~ ~ 0 0 0 0.1 2 normal @a
execute as @e[tag=flashbolt,scores={abilitytimer2=200..}] at @s run tag @s add projdead

execute as @e[tag=staticmine] run scoreboard players add @s abilitytimer2 1
execute as @e[tag=staticmine] at @s run particle cloud ~ ~ ~ 0.1 0.1 0.1 0.03 1 normal @a
execute as @e[tag=staticmine] at @s run particle firework ~ ~ ~ 0.1 0.7 0.1 0.02 10 normal @a
execute as @e[tag=staticmine,scores={abilitytimer2=50..}] at @s if entity @p[distance=..4] run effect give @a[distance=..4] instant_damage 1 1
execute as @e[tag=staticmine,scores={abilitytimer2=50..}] at @s if entity @p[distance=..4] run playsound entity.generic.explode master @a ~ ~ ~ 5 1.5
execute as @e[tag=staticmine,scores={abilitytimer2=50..}] at @s if entity @p[distance=..4] run particle dust 0 1 1 4 ~ ~ ~ 2 2 2 0 100 normal @a
execute as @e[tag=staticmine,scores={abilitytimer2=50..}] at @s if entity @p[distance=..4] run particle large_smoke ~ ~ ~ 0 0 0 0.5 50 normal @a
execute as @e[tag=staticmine,scores={abilitytimer2=50..}] at @s if entity @p[distance=..4] run kill @s
execute as @e[tag=staticmine,scores={abilitytimer2=300..}] at @s run kill @s

execute as @e[tag=echoingstar] run scoreboard players add @s abilitytimer2 1
execute as @e[tag=echoingstar] run scoreboard players add @s abilitytimer3 1
execute as @e[tag=echoingstar,scores={abilitytimer2=1}] at @s run playsound block.beacon.deactivate master @a ~ ~ ~ 10 0.9
execute as @e[tag=echoingstar,scores={abilitytimer2=1}] at @s run particle electric_spark ~ ~ ~ 0 0 0 0.8 100 normal @a
execute as @e[tag=echoingstar,scores={abilitytimer3=20..}] at @s run summon armor_stand ~ ~ ~ {Tags:["ceruleanblade"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=echoingstar,scores={abilitytimer3=20..}] at @s run scoreboard players set @s abilitytimer3 0
execute as @e[tag=echoingstar,scores={abilitytimer2=200..}] at @s run tag @s add projdead
execute as @e[tag=echoingstar] at @s run particle dust_color_transition 1 1 1 3 0.2 0.2 0.5 ~ ~ ~ 1 1 1 0 100 normal @a
execute as @e[tag=echoingstar] at @s run particle firework ~ ~ ~ 0 0 0 0.8 30 normal @a
execute as @e[tag=echoingstar] at @s run particle electric_spark ~ ~ ~ 3 3 3 0 40 normal @a
execute as @e[tag=echoingstar] at @s run playsound block.beacon.ambient master @a ~ ~ ~ 1 2
execute as @e[tag=echoingstar] at @s facing entity @p feet rotated ~85 0 run tp @s ^ ^ ^0.7
execute as @e[tag=echoingstar] at @s if entity @a[distance=..4] run tag @s add projdead
execute as @e[tag=echoingstar,tag=projdead] at @s run playsound entity.blaze.death master @a ~ ~ ~ 5 2
execute as @e[tag=echoingstar,tag=projdead] at @s run playsound entity.zombie_villager.cure master @a ~ ~ ~ 5 1
execute as @e[tag=echoingstar,tag=projdead] at @s run particle cloud ~ ~ ~ 0 0 0 0.3 50 normal @a
execute as @e[tag=echoingstar,tag=projdead] at @s run particle cloud ~ ~ ~ 0 0 0 0.5 80 normal @a
execute as @e[tag=echoingstar,tag=projdead] at @s run particle large_smoke ~ ~ ~ 0 0 0 0.8 50 normal @a
execute as @e[tag=echoingstar,tag=projdead] at @s run effect give @e[type=!player,distance=..10] resistance 1 5
execute as @e[tag=echoingstar,tag=projdead] at @s run summon creeper ~ ~1 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,ExplosionRadius:5b,Fuse:0,ignited:1b,CustomName:'{"text":"Echoing Blast","color":"white","bold":true}'}
execute as @e[tag=echoingstar,tag=projdead] at @s run kill @s

execute as @e[tag=ceruleanblade] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=ceruleanblade] at @s run playsound entity.phantom.hurt master @a ~ ~ ~ 1 2
execute as @e[tag=ceruleanblade] at @s rotated ~ ~ run particle electric_spark ^ ^ ^3 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=ceruleanblade] at @s rotated ~10 ~ run particle electric_spark ^ ^ ^3 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=ceruleanblade] at @s rotated ~-10 ~ run particle electric_spark ^ ^ ^3 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=ceruleanblade] at @s rotated ~20 ~ run particle electric_spark ^ ^ ^3 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=ceruleanblade] at @s rotated ~-20 ~ run particle electric_spark ^ ^ ^3 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=ceruleanblade] at @s rotated ~30 ~ run particle electric_spark ^ ^ ^3 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=ceruleanblade] at @s rotated ~-30 ~ run particle electric_spark ^ ^ ^3 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=ceruleanblade] at @s rotated ~40 ~ run particle electric_spark ^ ^ ^3 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=ceruleanblade] at @s rotated ~-40 ~ run particle electric_spark ^ ^ ^3 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=ceruleanblade] at @s rotated ~-50 ~ run particle electric_spark ^ ^ ^3 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=ceruleanblade] at @s rotated ~50 ~ run particle electric_spark ^ ^ ^3 0.1 0.1 0.1 0 10 normal @a
execute as @e[tag=ceruleanblade,scores={abilitytimer2=1}] at @s run scoreboard players set @s attackstate 1
execute as @e[tag=ceruleanblade,scores={abilitytimer2=1}] at @s if predicate hm:50percent run tag @s add alternateceruleanblade
execute as @e[tag=ceruleanblade] at @s if entity @p[distance=..10] run scoreboard players set @s attackstate 2
execute as @e[tag=ceruleanblade,tag=!alternateceruleanblade,scores={attackstate=1}] at @s facing entity @p feet rotated ~50 ~-10 run tp @s ^ ^ ^0.5
execute as @e[tag=ceruleanblade,tag=alternateceruleanblade,scores={attackstate=1}] at @s facing entity @p feet rotated ~-50 ~-10 run tp @s ^ ^ ^0.5
execute as @e[tag=ceruleanblade,scores={attackstate=1}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=ceruleanblade,scores={attackstate=2}] at @s rotated ~ 0 run tp @s ^ ^ ^0.3
execute as @e[tag=ceruleanblade] at @s positioned ^ ^ ^3 if entity @p[distance=..3] run effect give @e[distance=..3,type=player] resistance 1 0
execute as @e[tag=ceruleanblade] at @s positioned ^ ^ ^3 if entity @p[distance=..3] run effect give @e[distance=..3,type=player] instant_damage 1 1
execute as @e[tag=ceruleanblade] at @s positioned ^ ^ ^3 if entity @p[distance=..3] run particle explosion ~ ~ ~ 0 0 0 0 1 normal @a
execute as @e[tag=ceruleanblade] at @s positioned ^ ^ ^3 if entity @p[distance=..3] run playsound block.lava.extinguish master @a ~ ~ ~ 5 2
execute as @e[tag=ceruleanblade] at @s positioned ^ ^ ^3 if entity @p[distance=..3] run kill @s
execute as @e[tag=ceruleanblade,scores={attackstate=200..}] at @s run kill @s