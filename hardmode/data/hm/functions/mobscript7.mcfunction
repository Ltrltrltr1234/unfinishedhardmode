#not exactly a mob, just an attack script for decayed ancient's sand spell

execute as @e[tag=sandspell] run scoreboard players add @s abilitytimer2 1
execute as @e[tag=sandspell] at @s run tp @s ^ ^ ^0.3
execute as @e[tag=sandspell] at @s if entity @p[distance=..2] run tag @s add projdead
execute as @e[tag=sandspell] at @s unless block ^ ^1 ^0.1 air run tag @s add projdead
execute as @e[tag=sandspell,tag=projdead] at @s run effect give @e[type=!player,distance=..5] resistance 1 10 true
execute as @e[tag=sandspell,tag=projdead] at @s run effect give @e[type=player,distance=..5] weakness 3 0 true
execute as @e[tag=sandspell,tag=projdead] at @s run effect give @e[type=player,distance=..5] blindness 3 0 true
execute as @e[tag=sandspell,tag=projdead] at @s run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:2b,Fuse:0,ignited:1b,CustomName:'{"text":"Sand Blast","color":"gold","bold":true}'}
execute as @e[tag=sandspell,tag=projdead] at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:sand"},Fire:10000,HasVisualFire:1b,Time:-10000,DropItem:0b,HurtEntities:1b,FallHurtMax:10,FallDistance:5f,FallHurtAmount:2f,Motion:[0.1,0.5,0.1]}
execute as @e[tag=sandspell,tag=projdead] at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:sand"},Fire:10000,HasVisualFire:1b,Time:-10000,DropItem:0b,HurtEntities:1b,FallHurtMax:10,FallDistance:5f,FallHurtAmount:2f,Motion:[0.3,0.6,0.4]}
execute as @e[tag=sandspell,tag=projdead] at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:sand"},Fire:10000,HasVisualFire:1b,Time:-10000,DropItem:0b,HurtEntities:1b,FallHurtMax:10,FallDistance:5f,FallHurtAmount:2f,Motion:[0.6,1.0,-0.2]}
execute as @e[tag=sandspell,tag=projdead] at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:sand"},Fire:10000,HasVisualFire:1b,Time:-10000,DropItem:0b,HurtEntities:1b,FallHurtMax:10,FallDistance:5f,FallHurtAmount:2f,Motion:[-0.2,0.7,-0.5]}
execute as @e[tag=sandspell,tag=projdead] at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:sand"},Fire:10000,HasVisualFire:1b,Time:-10000,DropItem:0b,HurtEntities:1b,FallHurtMax:10,FallDistance:5f,FallHurtAmount:2f,Motion:[-0.2,0.7,0.0]}
execute as @e[tag=sandspell,tag=projdead] at @s run playsound entity.wither.ambient master @a ~ ~ ~ 2 0.5
execute as @e[tag=sandspell,tag=projdead] at @s run kill @s
execute as @e[tag=sandspell] at @s run particle dust_color_transition 0.965 1.000 0.451 1 0.200 0.078 0.000 ~ ~ ~ 0.2 0.2 0.2 0 20 normal
execute as @e[tag=sandspell,scores={abilitytimer2=200..}] at @s run tag @s add projdead