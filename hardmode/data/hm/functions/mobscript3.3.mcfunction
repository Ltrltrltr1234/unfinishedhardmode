execute as @s[scores={hp=..300,abilitytimer3=300}] run scoreboard players add @s spmv 1
execute as @s[scores={hp=..300,abilitytimer3=300}] if predicate hm:50percent run scoreboard players add @s spmv 1
execute as @s[scores={hp=..300,abilitytimer3=300}] if predicate hm:20percent run scoreboard players add @s spmv 1
execute as @s[scores={hp=..300,abilitytimer3=300}] if predicate hm:10percent run scoreboard players add @s spmv 1
execute as @s[scores={hp=..300,abilitytimer3=300}] if predicate hm:5percent run scoreboard players add @s spmv 1
execute as @s[scores={spmv=2..}] unless score @s hp matches ..250 run scoreboard players set @s spmv 1
execute as @s[scores={spmv=3..}] unless score @s hp matches ..200 run scoreboard players set @s spmv 1
execute as @s[scores={spmv=7..}] unless score @s hp matches ..100 run scoreboard players set @s spmv 1
execute as @s[scores={spmv=8..}] run scoreboard players set @s spmv 1
execute as @s[scores={spmv=1..7,abilitytimer3=300}] at @s run playsound entity.elder_guardian.curse master @a ~ ~ ~ 5 1

execute as @s[scores={spmv=1,hp=..300,abilitytimer3=300}] at @s run tellraw @a[distance=..50] {"text":"Raging Thunder: Galvanic Bomb!","color":"#66FFFF","bold":true,"italic":false}
execute as @s[scores={spmv=2,hp=..250,abilitytimer3=300}] at @s run tellraw @a[distance=..50] {"text":"Raging Thunder: Rapid Discharge!","color":"#DCE0FF","bold":true,"italic":false}
execute as @s[scores={spmv=3,hp=..200,abilitytimer3=300}] at @s run tellraw @a[distance=..50] {"text":"Raging Thunder: Devastation Disc!","color":"#75D7FF","bold":true,"italic":false}
execute as @s[scores={spmv=4,hp=..200,abilitytimer3=300}] at @s run tellraw @a[distance=..50] {"text":"Raging Thunder: Hypercharge Supernova!","color":"#E9FFFD","bold":true,"italic":false}
execute as @s[scores={spmv=5,hp=..200,abilitytimer3=300}] at @s run tellraw @a[distance=..50] {"text":"Raging Thunder: Caelis Storm!","color":"#3C5A9B","bold":true,"italic":false}
execute as @s[scores={spmv=6,hp=..200,abilitytimer3=300}] at @s run tellraw @a[distance=..50] {"text":"Raging Thunder: Electro Barrier!","color":"#9985FF","bold":true,"italic":false}
execute as @s[scores={spmv=7,hp=..100,abilitytimer3=300}] at @s run tellraw @a[distance=..50] {"text":"Raging Thunder: Shatter the Sky!","color":"#00AA95","bold":true,"italic":false}
execute as @s[scores={spmv=1..7,hp=..300,abilitytimer3=20}] at @s if predicate hm:50percent run scoreboard players set @s abilitytimer2 -150
execute as @s[scores={abilitytimer2=-150}] at @s run scoreboard players set @s bossabilitytimer -150
execute as @s[scores={abilitytimer2=-150}] at @s run scoreboard players remove @s abilitytimer4 150
execute as @s[scores={abilitytimer2=-150}] at @s run tellraw @a[distance=..50] {"text":"The Hypercharged Devastator is fatigued!","color":"#66FFFF","bold":true,"italic":false}

execute as @s[scores={spmv=1,hp=..300,abilitytimer3=10}] at @s run particle firework ~ ~ ~ 0 0 0 1 250 normal @a
execute as @s[scores={spmv=1,hp=..300,abilitytimer3=10}] at @s run playsound item.crossbow.shoot master @a ~ ~ ~ 5 1
execute as @s[scores={spmv=1,hp=..300,abilitytimer3=10}] at @s run summon armor_stand ~ ~2 ~ {CustomNameVisible:0b,Small:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["galbomb"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b,tag:{Enchantments:[{}]}}]}
execute as @s[scores={spmv=1,hp=..200,abilitytimer3=30}] at @s run summon armor_stand ~ ~2 ~ {CustomNameVisible:0b,Small:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["galbomb"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b,tag:{Enchantments:[{}]}}]}
execute as @s[scores={spmv=1,hp=..300,abilitytimer3=10}] at @s as @e[tag=galbomb,sort=nearest,limit=1] at @s run function hm:motion-5
execute as @s[scores={spmv=1,hp=..200,abilitytimer3=30}] at @s as @e[tag=galbomb,sort=nearest,limit=1] at @s run function hm:motion-5

execute as @s[scores={spmv=2,abilitytimer3=0..90,hp=..250}] at @s run scoreboard players set @s bossabilitytimer -100
execute as @s[scores={spmv=2,abilitytimer3=0..20,hp=..250}] at @s run particle firework ~ ~ ~ 0 0 0 0.3 25 normal @a
execute as @s[scores={spmv=2,abilitytimer3=20,hp=..250}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @s[scores={spmv=2,abilitytimer3=20..30,hp=..250}] at @s unless entity @p[distance=..2] run tp @s ^ ^ ^2
execute as @s[scores={spmv=2,abilitytimer3=20..30,hp=..250}] at @s unless entity @p[distance=..2] run particle electric_spark ~ ~ ~ 2 2 2 0 50 normal @a
execute as @s[scores={spmv=2,abilitytimer3=20..30,hp=..250}] at @s run playsound block.respawn_anchor.set_spawn master @a ~ ~ ~ 3 1.5
execute as @s[scores={spmv=2,abilitytimer3=40,hp=..250}] at @s run effect give @e[distance=..10,type=!player] resistance 1 5
execute as @s[scores={spmv=2,abilitytimer3=40,hp=..250}] at @s run summon creeper ~ ~1 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:3b,Fuse:0,ignited:1b,CustomName:'{"text":"Explosive Discharge","color":"#DCE0FF","bold":true}'}
execute as @s[scores={spmv=2,abilitytimer3=45,hp=..250}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @s[scores={spmv=2,abilitytimer3=45..55,hp=..250}] at @s unless entity @p[distance=..2] run tp @s ^ ^ ^2
execute as @s[scores={spmv=2,abilitytimer3=45..55,hp=..250}] at @s unless entity @p[distance=..2] run particle electric_spark ~ ~ ~ 2 2 2 0 50 normal @a
execute as @s[scores={spmv=2,abilitytimer3=45..55,hp=..250}] at @s run playsound block.respawn_anchor.set_spawn master @a ~ ~ ~ 3 1.5
execute as @s[scores={spmv=2,abilitytimer3=65,hp=..250}] at @s run effect give @e[distance=..10,type=!player] resistance 1 5
execute as @s[scores={spmv=2,abilitytimer3=65,hp=..250}] at @s run summon creeper ~ ~1 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:3b,Fuse:0,ignited:1b,CustomName:'{"text":"Explosive Discharge","color":"#DCE0FF","bold":true}'}
execute as @s[scores={spmv=2,abilitytimer3=70,hp=..250}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @s[scores={spmv=2,abilitytimer3=70..80,hp=..250}] at @s unless entity @p[distance=..2] run tp @s ^ ^ ^2
execute as @s[scores={spmv=2,abilitytimer3=70..80,hp=..250}] at @s unless entity @p[distance=..2] run particle electric_spark ~ ~ ~ 2 2 2 0 50 normal @a
execute as @s[scores={spmv=2,abilitytimer3=70..80,hp=..250}] at @s run playsound block.respawn_anchor.set_spawn master @a ~ ~ ~ 3 1.5
execute as @s[scores={spmv=2,abilitytimer3=90,hp=..250}] at @s run effect give @e[distance=..10,type=!player] resistance 1 5
execute as @s[scores={spmv=2,abilitytimer3=90,hp=..250}] at @s run summon creeper ~ ~1 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:3b,Fuse:0,ignited:1b,CustomName:'{"text":"Explosive Discharge","color":"#DCE0FF","bold":true}'}

execute as @s[scores={spmv=3,hp=..200,abilitytimer3=10..25}] at @s run particle firework ~ ~ ~ 1 1 1 0.5 20 normal @a
execute as @s[scores={spmv=3,hp=..200,abilitytimer3=25}] at @s run playsound entity.lightning_bolt.thunder master @a ~ ~10 ~ 20 0.5
execute as @s[scores={spmv=3,hp=..200,abilitytimer3=25}] at @s run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["ddisc"],DisabledSlots:4144959}
execute as @s[scores={spmv=3,hp=..100,abilitytimer3=45}] at @s run playsound entity.lightning_bolt.thunder master @a ~ ~10 ~ 20 0.5
execute as @s[scores={spmv=3,hp=..100,abilitytimer3=45}] at @s run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["ddisc"],DisabledSlots:4144959}
execute as @s[scores={spmv=3,hp=..100,abilitytimer3=65}] at @s run playsound entity.lightning_bolt.thunder master @a ~ ~10 ~ 20 0.5
execute as @s[scores={spmv=3,hp=..100,abilitytimer3=65}] at @s run summon armor_stand ~ ~0.5 ~ {CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["ddisc"],DisabledSlots:4144959}

execute as @s[scores={spmv=4,hp=..200,abilitytimer3=0..100}] at @s run particle end_rod ~ ~ ~ 0 0 0 1 50 normal @a
execute as @s[scores={spmv=4,hp=..200,abilitytimer3=0..100}] at @s run particle poof ~ ~ ~ 0 0 0 0.7 30 normal @a
execute as @s[scores={spmv=4,hp=..200,abilitytimer3=0..100}] at @s run playsound entity.evoker.prepare_attack master @a ~ ~ ~ 20 2
execute as @s[scores={spmv=4,hp=..200,abilitytimer3=100..150}] at @s run effect give @a[distance=..15] instant_damage 1 1
execute as @s[scores={spmv=4,hp=..200,abilitytimer3=100..150}] at @s run execute as @a[distance=..15] at @s facing entity @e[tag=creeperboss,limit=1,sort=nearest] feet if block ^ ^ ^-1 air run tp @s ^ ^ ^-1
execute as @s[scores={spmv=4,hp=..200,abilitytimer3=100..150}] at @s run particle explosion_emitter ~ ~ ~ 8 8 8 0 5 normal @a
execute as @s[scores={spmv=4,hp=..200,abilitytimer3=100..150}] at @s run particle firework ~ ~ ~ 3 3 3 1.5 200 normal @a
execute as @s[scores={spmv=4,hp=..200,abilitytimer3=100..150}] at @s run particle cloud ~ ~ ~ 3 3 3 1.5 200 normal @a
execute as @s[scores={spmv=4,hp=..200,abilitytimer3=100..150}] at @s run playsound entity.generic.explode master @a ~ ~ ~ 20 0.5
execute as @s[scores={spmv=4,hp=..200,abilitytimer3=..150}] at @s run scoreboard players set @s abilitytimer2 -50
execute as @s[scores={spmv=4,hp=..200,abilitytimer3=..150}] at @s run scoreboard players set @s bossabilitytimer -50

execute as @s[scores={spmv=5,hp=..200,abilitytimer3=10}] at @s run playsound entity.shulker.shoot master @a ~ ~ ~ 5 1
execute as @s[scores={spmv=5,hp=..200,abilitytimer3=10}] at @s run summon armor_stand ~ ~1 ~ {CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["caelismissile","caelis1"],DisabledSlots:4144959}
execute as @s[scores={spmv=5,hp=..200,abilitytimer3=10}] at @s run summon armor_stand ~ ~1 ~ {CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["caelismissile","caelis2"],DisabledSlots:4144959}
execute as @s[scores={spmv=5,hp=..200,abilitytimer3=10}] at @s run summon armor_stand ~ ~1 ~ {CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["caelismissile","caelis3"],DisabledSlots:4144959}
execute as @s[scores={spmv=5,hp=..200,abilitytimer3=10}] at @s run summon armor_stand ~ ~1 ~ {CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["caelismissile","caelis4"],DisabledSlots:4144959}
execute as @s[scores={spmv=5,hp=..200,abilitytimer3=10}] at @s run summon armor_stand ~ ~1 ~ {CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["caelismissile","caelis5"],DisabledSlots:4144959}
execute as @s[scores={spmv=5,hp=..200,abilitytimer3=10}] at @s run summon armor_stand ~ ~1 ~ {CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["caelismissile","caelis6"],DisabledSlots:4144959}
execute as @s[scores={spmv=5,hp=..200,abilitytimer3=10}] at @s run execute as @e[tag=caelis1,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~90 -75
execute as @s[scores={spmv=5,hp=..200,abilitytimer3=10}] at @s run execute as @e[tag=caelis2,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-90 -75
execute as @s[scores={spmv=5,hp=..200,abilitytimer3=10}] at @s run execute as @e[tag=caelis3,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~90 -40
execute as @s[scores={spmv=5,hp=..200,abilitytimer3=10}] at @s run execute as @e[tag=caelis4,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-90 -40
execute as @s[scores={spmv=5,hp=..200,abilitytimer3=10}] at @s run execute as @e[tag=caelis5,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~90 0
execute as @s[scores={spmv=5,hp=..200,abilitytimer3=10}] at @s run execute as @e[tag=caelis6,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-90 0
execute as @s[scores={abilitytimer3=300..}] run scoreboard players set @s abilitytimer3 0

execute as @s[scores={spmv=6,hp=..200,abilitytimer3=0..120}] at @s run scoreboard players set @s bossabilitytimer -50
execute as @s[scores={spmv=6,hp=..200,abilitytimer3=0..120}] at @s run playsound block.note_block.didgeridoo master @a ~ ~ ~ 5 0.75
execute as @s[scores={spmv=6,hp=..200,abilitytimer3=0}] at @s run playsound entity.evoker.cast_spell master @a ~ ~ ~ 5 1
execute as @s[scores={spmv=6,hp=..200,abilitytimer3=0..120}] at @s unless entity @e[distance=..4,tag=electrobarrier] run summon armor_stand ~ ~ ~ {Tags:["electrobarrier"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @s[scores={spmv=6,hp=..200,abilitytimer3=0..120}] at @s rotated as @e[limit=1,sort=nearest,tag=electrobarrier] run tp @e[limit=1,sort=nearest,tag=electrobarrier] ~ ~ ~ ~ ~
execute as @s[scores={spmv=6,hp=..200,abilitytimer3=0..120}] at @s run execute as @a[distance=..4] at @s facing entity @e[tag=creeperboss,limit=1,sort=nearest] feet if block ^ ^ ^-1 air run tp @s ^ ^ ^-0.5
execute as @s[scores={spmv=6,hp=..200,abilitytimer3=0..120}] at @s run effect give @s resistance 3 5
execute as @s[scores={spmv=6,hp=..200,abilitytimer3=120..140}] at @s run playsound entity.generic.explode master @a ~ ~ ~ 3 1
execute as @s[scores={spmv=6,hp=..200,abilitytimer3=120..150}] at @s run playsound block.note_block.didgeridoo master @a ~ ~ ~ 5 1
execute as @s[scores={spmv=6,hp=..200,abilitytimer3=120..150}] at @s run particle dust_color_transition 0.894 0.769 1.000 2 0.384 0.341 1.000 ~ ~ ~ 5 5 5 0 80 normal @a
execute as @s[scores={spmv=6,hp=..200,abilitytimer3=120..150}] at @s run particle cloud ~ ~ ~ 5 5 5 0.5 100 normal @a
execute as @s[scores={spmv=6,hp=..200,abilitytimer3=120..150}] at @s run particle explosion ~ ~ ~ 4 4 4 0 10 normal @a
execute as @s[scores={spmv=6,hp=..200,abilitytimer3=120..140}] at @s run execute as @a[distance=..10] at @s facing entity @e[tag=creeperboss,limit=1,sort=nearest] feet if block ^ ^0.5 ^-1 air run tp @s ^ ^0.4 ^-0.8
execute as @s[scores={spmv=6,hp=..200,abilitytimer3=120..140}] at @s run effect give @a[distance=..7] instant_damage 1 2
execute as @s[scores={spmv=6,hp=..200,abilitytimer3=120..140}] at @s run effect give @a[distance=..13] instant_damage 1 1

execute as @s[scores={spmv=7,hp=..100,abilitytimer3=1}] at @s run playsound entity.ravager.roar master @a ~ ~ ~ 10 1
execute as @s[scores={spmv=7,hp=..100,abilitytimer3=0..30}] at @s run particle glow ~ ~ ~ 5 5 5 1 100 normal @a
execute as @s[scores={spmv=7,hp=..100,abilitytimer3=0..30}] at @s run particle soul_fire_flame ~ ~ ~ 0 0 0 0.8 50 normal @a
execute as @s[scores={spmv=7,hp=..100,abilitytimer3=0..30}] at @s run execute as @a[distance=..8] at @s facing entity @e[tag=creeperboss,limit=1,sort=nearest] feet if block ^ ^ ^-1 air run tp @s ^ ^ ^-0.5
execute as @s[scores={spmv=7,hp=..100,abilitytimer3=0..80}] at @s run scoreboard players set @s bossabilitytimer -50
execute as @s[scores={spmv=7,hp=..100,abilitytimer3=0..80}] at @s run scoreboard players set @s abilitytimer2 -50
execute as @s[scores={spmv=7,hp=..100,abilitytimer3=41..80}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @s[scores={spmv=7,hp=..100,abilitytimer3=41..80}] at @s run summon arrow ^ ^2 ^1 {NoGravity:1b,Silent:0b,Glowing:1b,CustomNameVisible:0b,pickup:0b,damage:10d,PierceLevel:5b,Color:11403230,Tags:["shatterarrow"],CustomName:'{"text":"Shattering Stormbolt","color":"#BAFFFF","bold":true,"italic":false}',SoundEvent:"entity.zombie.attack_iron_door",CustomPotionEffects:[{Id:24,Amplifier:0b,Duration:100}]}
