#not exactly a mob, just an attack script for blizzard scourge's snow bolt

execute as @e[tag=snowbolt] run scoreboard players add @s abilitytimer2 1
execute as @e[tag=snowbolt] at @s run tp @s ^ ^ ^1.3
execute as @e[tag=snowbolt] at @s run tag @s add projdead
execute as @e[tag=snowbolt] at @s if block ^ ^1 ^0.1 air run tag @s remove projdead
execute as @e[tag=snowbolt] at @s if block ^ ^1 ^0.1 water run tag @s remove projdead
execute as @e[tag=snowbolt] at @s if entity @p[distance=..2] run tag @s add projdead
execute as @e[tag=snowbolt,tag=projdead] at @s run particle snowflake ~ ~ ~ 1 1 1 0 150 normal
execute as @e[tag=snowbolt] at @s run particle spit ~ ~ ~ 0.3 0.3 0.3 0 30 normal
execute as @e[tag=snowbolt,scores={abilitytimer2=200..}] at @s run tag @s add projdead
execute as @e[tag=snowbolt,tag=projdead] at @s run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:2b,Fuse:0,ignited:1b,CustomName:'{"text":"Freezing Force","color":"aqua","bold":true}'}
execute as @e[tag=snowbolt,tag=projdead] at @s run effect give @e[type=player,distance=..5] instant_damage 1 1
execute as @e[tag=snowbolt,tag=projdead] at @s run effect give @e[type=player,distance=..5] slowness 5 3
execute as @e[tag=snowbolt,tag=projdead] at @s run playsound block.lava.extinguish master @a ~ ~ ~ 2 0.5
execute as @e[tag=snowbolt,tag=projdead] at @s run kill @s