#not exactly a mob, just an attack script for tide swallower's water spell

execute as @e[tag=waterspell] run scoreboard players add @s abilitytimer2 1
execute as @e[tag=waterspell] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=waterspell] at @s run tag @s add projdead
execute as @e[tag=waterspell] at @s if block ^ ^1 ^0.1 air run tag @s remove projdead
execute as @e[tag=waterspell] at @s if block ^ ^1 ^0.1 water run tag @s remove projdead
execute as @e[tag=waterspell] at @s if entity @p[distance=..2] run tag @s add projdead
execute as @e[tag=waterspell,tag=projdead] at @s run effect give @e[type=!player,distance=..5] resistance 1 5
execute as @e[tag=waterspell,tag=projdead] at @s run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:2b,Fuse:0,ignited:1b,CustomName:'{"text":"Water Blast","color":"dark_blue","bold":true}'}

execute as @e[tag=waterspell,tag=projdead] at @s run playsound entity.player.splash master @a ~ ~ ~ 2 1
execute as @e[tag=waterspell,tag=projdead] at @s run kill @s
execute as @e[tag=waterspell] at @s run particle dust_color_transition 0.329 0.553 1.000 1 0.075 0.102 0.490 ~ ~1.5 ~ 0.2 0.2 0.2 0 5 normal
execute as @e[tag=waterspell,scores={abilitytimer2=200..}] at @s run tag @s add projdead