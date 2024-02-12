execute as @a[scores={tpboss1=1..}] at @s unless entity @e[tag=zombieboss] run tellraw @s "Boss no longer exists! D:"
execute as @a[scores={tpboss1=1..}] at @s if entity @e[tag=zombieboss] run tp @s @e[tag=zombieboss,limit=1,sort=nearest]
execute as @a[scores={tpboss1=1..}] run scoreboard players set @s tpboss1 0
scoreboard players enable @a tpboss1

execute as @e[tag=zombieboss] store result score @s hp run data get entity @s Health

execute as @e[tag=zombieboss] at @s run execute as @e[type=zombie,distance=..20] run attribute @s generic.movement_speed base set 0.38
execute as @e[tag=zombieboss,scores={abilitytimer5=900..1150}] at @s run scoreboard players set @s bossabilitytimer -40
execute as @e[tag=zombieboss,scores={abilitytimer5=900..1150}] at @s run scoreboard players set @s abilitytimer2 -40
execute as @e[tag=zombieboss,scores={abilitytimer5=900..1150}] at @s run scoreboard players set @s abilitytimer3 -40
execute as @e[tag=zombieboss,scores={abilitytimer5=900..1150}] at @s run scoreboard players set @s abilitytimer4 -40
execute as @e[tag=zombieboss] at @s unless score @s abilitytimer5 matches 900..1150 run scoreboard players add @s bossabilitytimer 1
execute as @e[tag=zombieboss] at @s unless score @s abilitytimer5 matches 900..1150 run scoreboard players add @s abilitytimer2 1
execute as @e[tag=zombieboss] at @s unless score @s abilitytimer5 matches 900..1150 run scoreboard players add @s abilitytimer3 1
execute as @e[tag=zombieboss] at @s unless score @s abilitytimer5 matches 900..1150 run scoreboard players add @s abilitytimer4 1
execute as @e[tag=zombieboss,scores={hp=..50}] run function hm:mobscript1.1
execute as @e[tag=zombieboss,scores={bossabilitytimer=200..260}] at @s run particle smoke ~ ~ ~ 0 0 0 0.3 10 normal @a
execute as @e[tag=zombieboss,scores={bossabilitytimer=220..260}] at @s run tp @s ~ ~ ~
execute as @e[tag=zombieboss,scores={bossabilitytimer=260}] unless entity @s[scores={abilitytimer3=80..180}] at @s run tp @s ~ ~ ~ ~60 ~
execute as @e[tag=zombieboss,scores={bossabilitytimer=260..270}] unless entity @s[scores={abilitytimer3=80..180}] run function hm:mobscript1.2
execute as @e[tag=zombieboss,scores={bossabilitytimer=260..265}] unless entity @s[scores={abilitytimer3=80..180}] at @s run tp @s ~ ~ ~ ~-2 ~
execute as @e[tag=zombieboss,scores={bossabilitytimer=266..270}] unless entity @s[scores={abilitytimer3=80..180}] at @s run tp @s ~ ~ ~ ~-10 ~
execute as @e[tag=zombieboss,scores={bossabilitytimer=260..270}] unless entity @s[scores={abilitytimer3=80..180}] run function hm:mobscript1.2
execute as @e[tag=zombieboss,scores={bossabilitytimer=260}] unless entity @s[scores={abilitytimer3=80..180}] run playsound entity.wither.shoot master @a ~ ~ ~ 1 1
execute as @e[tag=zombieboss,scores={bossabilitytimer=260..265}] unless entity @s[scores={abilitytimer3=80..180}] at @s run tp @s ~ ~ ~ ~-2 ~
execute as @e[tag=zombieboss,scores={bossabilitytimer=266..270}] unless entity @s[scores={abilitytimer3=80..180}] at @s run tp @s ~ ~ ~ ~-10 ~
execute as @e[tag=zombieboss,scores={bossabilitytimer=280..300}] at @s run particle smoke ~ ~ ~ 0 0 0 0.3 10 normal @a
execute as @e[tag=zombieboss,scores={bossabilitytimer=300}] unless entity @s[scores={abilitytimer3=80..180}] at @s run tp @s ~ ~ ~ ~-60 ~
execute as @e[tag=zombieboss,scores={bossabilitytimer=300..310}] unless entity @s[scores={abilitytimer3=80..180}] run function hm:mobscript1.2
execute as @e[tag=zombieboss,scores={bossabilitytimer=300..305}] unless entity @s[scores={abilitytimer3=80..180}] at @s run tp @s ~ ~ ~ ~2 ~
execute as @e[tag=zombieboss,scores={bossabilitytimer=306..310}] unless entity @s[scores={abilitytimer3=80..180}] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=zombieboss,scores={bossabilitytimer=300..310}] unless entity @s[scores={abilitytimer3=80..180}] run function hm:mobscript1.2
execute as @e[tag=zombieboss,scores={bossabilitytimer=300..305}] unless entity @s[scores={abilitytimer3=80..180}] at @s run tp @s ~ ~ ~ ~2 ~
execute as @e[tag=zombieboss,scores={bossabilitytimer=306..310}] unless entity @s[scores={abilitytimer3=80..180}] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=zombieboss,scores={bossabilitytimer=300}] unless entity @s[scores={abilitytimer3=80..180}] run playsound entity.wither.shoot master @a ~ ~ ~ 1 1
execute as @e[tag=zombieboss,scores={bossabilitytimer=400..}] run scoreboard players set @s bossabilitytimer 0
execute as @e[tag=zombieboss] run data modify entity @s DrownedConversionTime set value 100100

execute as @e[tag=zombieboss,scores={abilitytimer2=500..}] at @s run summon zombie ~ ~1 ~
execute as @e[tag=zombieboss,scores={abilitytimer2=500..}] at @s run particle large_smoke ~ ~ ~ 0 0 0 0 30 normal @a
execute as @e[tag=zombieboss,scores={abilitytimer2=500..}] at @s run playsound entity.evoker.cast_spell master @a ~ ~ ~ 1 0.5 0
execute as @e[tag=zombieboss,scores={abilitytimer2=500..}] at @s run scoreboard players set @s abilitytimer2 0

execute as @e[tag=zombieboss] at @s run data modify entity @s FallDistance set value 0
execute as @e[tag=zombieboss,scores={abilitytimer3=90..120}] at @s run particle witch ~ ~ ~ 0.1 0.1 0.1 0.3 10 normal
execute as @e[tag=zombieboss,scores={abilitytimer3=120..130}] at @s run particle smoke ~ ~ ~ 0 0 0 0.1 10 normal
execute as @e[tag=zombieboss,scores={abilitytimer3=120..130}] at @s run effect give @s strength 1 0
execute as @e[tag=zombieboss,scores={abilitytimer3=120..123}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=zombieboss,scores={abilitytimer3=120..130}] at @s if entity @p[distance=..20] if block ^ ^1 ^1 air run tp @s ^ ^ ^1 ~ ~
execute as @e[tag=zombieboss,scores={abilitytimer3=120..130}] at @s if entity @p[distance=..20] if block ^ ^2 ^1 water run tp @s ^ ^0.3 ^1 ~ ~
execute as @e[tag=zombieboss,scores={abilitytimer3=120}] at @s run playsound entity.firework_rocket.launch master @a ~ ~ ~ 4 2
execute as @e[tag=zombieboss,scores={abilitytimer3=120..130}] at @s run playsound entity.wither.break_block master @a ~ ~ ~ 0.5 2
execute as @e[tag=zombieboss,scores={abilitytimer3=180}] at @s run playsound entity.evoker.cast_spell master @a ~ ~ ~ 5
execute as @e[tag=zombieboss,scores={abilitytimer3=160..200}] at @s run particle smoke ^ ^8 ^ 0 0 0 0 3 normal @a
execute as @e[tag=zombieboss,scores={abilitytimer3=160..210}] at @s run particle smoke ^-2 ^4 ^ 0 0 0 0 3 normal @a
execute as @e[tag=zombieboss,scores={abilitytimer3=160..220}] at @s run particle smoke ^2 ^4 ^ 0 0 0 0 3 normal @a
execute as @e[tag=zombieboss,scores={abilitytimer3=200}] at @s run summon armor_stand ^ ^8 ^ {Tags:["lifestealneedle"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=zombieboss,scores={abilitytimer3=210}] at @s run summon armor_stand ^-2 ^4 ^ {Tags:["lifestealneedle"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=zombieboss,scores={abilitytimer3=220}] at @s run summon armor_stand ^2 ^4 ^ {Tags:["lifestealneedle"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=zombieboss,scores={abilitytimer3=160..205,hp=..50}] at @s run particle smoke ^2 ^8 ^ 0 0 0 0 3 normal @a
execute as @e[tag=zombieboss,scores={abilitytimer3=160..215,hp=..50}] at @s run particle smoke ^-2 ^8 ^ 0 0 0 0 3 normal @a
execute as @e[tag=zombieboss,scores={abilitytimer3=160..225,hp=..50}] at @s run particle smoke ^4 ^5 ^ 0 0 0 0 3 normal @a
execute as @e[tag=zombieboss,scores={abilitytimer3=160..225,hp=..50}] at @s run particle smoke ^-4 ^5 ^ 0 0 0 0 3 normal @a
execute as @e[tag=zombieboss,scores={abilitytimer3=205,hp=..50}] at @s run summon armor_stand ^2 ^8 ^ {Tags:["lifestealneedle"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=zombieboss,scores={abilitytimer3=215,hp=..50}] at @s run summon armor_stand ^-2 ^8 ^ {Tags:["lifestealneedle"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=zombieboss,scores={abilitytimer3=225,hp=..50}] at @s run summon armor_stand ^4 ^5 ^ {Tags:["lifestealneedle"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=zombieboss,scores={abilitytimer3=225,hp=..50}] at @s run summon armor_stand ^-4 ^5 ^ {Tags:["lifestealneedle"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=zombieboss,scores={abilitytimer3=360..}] at @s run scoreboard players set @s abilitytimer3 0

execute as @e[tag=bindingleap] run scoreboard players add @s abilitytimer2 1
execute as @e[tag=bindingleap] at @s run particle dust_color_transition 1.000 0.000 0.400 2 0.412 0.000 0.000 ~ ~ ~ 3 0 3 0 100 normal @a
execute as @e[tag=bindingleap,scores={abilitytimer2=40..}] run kill @s

execute as @e[tag=zombieboss,scores={abilitytimer4=450}] at @s at @p run summon armor_stand ~ ~30 ~6 {Tags:["rottingdread"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=zombieboss,scores={abilitytimer4=470}] at @s at @p run summon armor_stand ~ ~30 ~-6 {Tags:["rottingdread"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=zombieboss,scores={abilitytimer4=490}] at @s at @p run summon armor_stand ~6 ~30 ~ {Tags:["rottingdread"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=zombieboss,scores={abilitytimer4=510}] at @s at @p run summon armor_stand ~-6 ~30 ~ {Tags:["rottingdread"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=zombieboss,scores={abilitytimer4=510..}] run scoreboard players set @s abilitytimer4 0

execute as @e[tag=rottingdread] at @s if block ~ ~-0.3 ~ air run tp @s ~ ~-0.3 ~
execute as @e[tag=rottingdread] at @s run particle smoke ~ ~ ~ 2 2 2 0.5 20 normal @a
execute as @e[tag=rottingdread] at @s run particle explosion ~ ~ ~ 0 0 0 0 1 normal @a
execute as @e[tag=rottingdread] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=rottingdread,scores={abilitytimer2=200..}] at @s run kill @s
execute as @e[tag=rottingdread] at @s unless block ~ ~-1 ~ air run particle large_smoke ~ ~ ~ 1 1 1 0.5 100 normal @a
execute as @e[tag=rottingdread] at @s unless block ~ ~-1 ~ air run playsound entity.zombie_villager.cure master @a ~ ~ ~ 3 1
execute as @e[tag=rottingdread] at @s unless block ~ ~-1 ~ air run summon armor_stand ~ ~ ~ {Tags:["rotpool"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=rottingdread] at @s unless block ~ ~-1 ~ air run kill @s
execute as @e[tag=rotpool] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=rotpool,scores={abilitytimer2=..50}] at @s anchored feet run particle dust 0.1 0.316 0 2 ~ ~-0.5 ~ 1 0 1 0.2 10 normal @a
execute as @e[tag=rotpool,scores={abilitytimer2=..50}] at @s run effect give @a[distance=..2] instant_damage 1 0
execute as @e[tag=rotpool,scores={abilitytimer2=51..100}] at @s anchored feet run particle dust 0.1 0.316 0 2 ~ ~-0.5 ~ 1.4 0 1.4 0.2 20 normal @a
execute as @e[tag=rotpool,scores={abilitytimer2=51..100}] at @s run effect give @a[distance=..3] instant_damage 1 0
execute as @e[tag=rotpool,scores={abilitytimer2=101..150}] at @s anchored feet run particle dust 0.1 0.316 0 2 ~ ~-0.5 ~ 1.7 0 1.7 0.2 40 normal @a
execute as @e[tag=rotpool,scores={abilitytimer2=101..150}] at @s run effect give @a[distance=..4] instant_damage 1 0
execute as @e[tag=rotpool,scores={abilitytimer2=151..}] at @s anchored feet run particle dust 0.1 0.316 0 2 ~ ~-0.5 ~ 2 0 2 0.2 80 normal @a
execute as @e[tag=rotpool,scores={abilitytimer2=151..}] at @s run effect give @a[distance=..5] instant_damage 1 0
execute as @e[tag=rotpool,scores={abilitytimer2=100..}] at @s if entity @e[distance=..50,tag=zombieboss,scores={hp=..50}] run tp @s ^ ^ ^0.15 facing entity @p
execute as @e[tag=rotpool,scores={abilitytimer2=150}] at @s if entity @e[distance=..50,tag=zombieboss,scores={hp=..50}] run playsound entity.wither.death master @a ~ ~ ~ 5 1.4
execute as @e[tag=rotpool,scores={abilitytimer2=150}] at @s if entity @e[distance=..50,tag=zombieboss,scores={hp=..50}] run effect give @e[type=player,distance=..5] instant_damage 1 2
execute as @e[tag=rotpool,scores={abilitytimer2=150}] at @s if entity @e[distance=..50,tag=zombieboss,scores={hp=..50}] run effect give @e[type=player,distance=..5] mining_fatigue 10 1
execute as @e[tag=rotpool,scores={abilitytimer2=150}] at @s if entity @e[distance=..50,tag=zombieboss,scores={hp=..50}] if entity @a[distance=..5] run tellraw @a[distance=..50] {"text":"A Rot Explosion has hit a player and healed the Dreadlich Centurion for 8.0 HP!","color":"dark_red","bold":false,"italic":false}
execute as @e[tag=rotpool,scores={abilitytimer2=150..155}] at @s if entity @e[distance=..50,tag=zombieboss,scores={hp=..50}] run particle explosion ~ ~ ~ 2 2 2 0 5 normal @a
execute as @e[tag=rotpool,scores={abilitytimer2=150..155}] at @s if entity @e[distance=..50,tag=zombieboss,scores={hp=..50}] run particle totem_of_undying ~ ~1 ~ 3 1 3 0.5 50 normal @a
execute as @e[tag=rotpool,scores={abilitytimer2=150}] at @s if entity @e[distance=..50,tag=zombieboss,scores={hp=..50}] if entity @a[distance=..5] run effect give @e[distance=..50,tag=zombieboss,scores={hp=..50}] instant_damage 1 1
execute as @e[tag=rotpool,scores={abilitytimer2=155..}] at @s run kill @s

execute as @e[tag=lifestealneedle] run scoreboard players add @s abilitytimer2 1
execute as @e[tag=lifestealneedle,scores={abilitytimer2=1}] at @s run playsound entity.evoker.cast_spell master @a ~ ~ ~ 2 2
execute as @e[tag=lifestealneedle,scores={abilitytimer2=..20}] at @s run tp @s ^ ^ ^0.25 facing entity @p
execute as @e[tag=lifestealneedle,scores={abilitytimer2=41}] at @s run playsound entity.wither.ambient master @a ~ ~ ~ 3 2
execute as @e[tag=lifestealneedle,scores={abilitytimer2=41..50}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=lifestealneedle,scores={abilitytimer2=51..}] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=lifestealneedle,scores={abilitytimer2=51..}] if entity @e[tag=zombieboss,distance=..50,scores={hp=..50}] at @s run tp @s ^ ^ ^0.2
execute as @e[tag=lifestealneedle,scores={abilitytimer2=51..}] at @s positioned ^ ^ ^3 if entity @p[distance=..2] run tag @s add projdead
execute as @e[tag=lifestealneedle] at @s unless block ^ ^1 ^0.1 air run tag @s add projdead
execute as @e[tag=lifestealneedle,tag=projdead] at @s positioned ^ ^ ^3 run effect give @e[type=!player,distance=..5] resistance 1 10 true
execute as @e[tag=lifestealneedle,tag=projdead] at @s positioned ^ ^ ^3 run effect give @e[type=player,distance=..3] resistance 1 1
execute as @e[tag=lifestealneedle,tag=projdead] at @s positioned ^ ^ ^3 run effect give @e[type=player,distance=..3] instant_damage 1 1 
execute as @e[tag=lifestealneedle,tag=projdead] at @s positioned ^ ^ ^3 if entity @a[distance=..3] run tellraw @a[distance=..50] {"text":"A Lifesteal Needle has hit a player and healed the Dreadlich Centurion for 4.0 HP!","color":"red","bold":false,"italic":false}
execute as @e[tag=lifestealneedle,tag=projdead] at @s positioned ^ ^ ^3 if entity @a[distance=..3] run effect give @e[distance=..50,tag=zombieboss] instant_damage 1 0
execute as @e[tag=lifestealneedle,tag=projdead] at @s positioned ^ ^ ^3 run particle dust_color_transition 0.8 0.2 0.2 2 0.3 0.05 0.05 ~ ~ ~ 1 1 1 0.3 300 normal
execute as @e[tag=lifestealneedle,tag=projdead] at @s positioned ^ ^ ^3 run particle dust_color_transition 0.8 0.2 0.2 2 0.3 0.05 0.05 ~ ~ ~ 0 5 0 0 200 normal
execute as @e[tag=lifestealneedle,tag=projdead] at @s run playsound entity.firework_rocket.blast master @a ~ ~ ~ 1 2 0
execute as @e[tag=lifestealneedle,tag=projdead] at @s run kill @s
execute as @e[tag=lifestealneedle] at @s run particle dust_color_transition 0.8 0.2 0.2 2 0.3 0.05 0.05 ~ ~ ~ 0.2 0.2 0.2 0.05 4 normal
execute as @e[tag=lifestealneedle,scores={abilitytimer2=51..}] at @s run particle dust_color_transition 0.8 0.2 0.2 2 0.3 0.05 0.05 ^ ^ ^1 0.1 0.1 0.1 0 3 normal
execute as @e[tag=lifestealneedle,scores={abilitytimer2=51..}] at @s run particle dust_color_transition 0.8 0.2 0.2 1 0.3 0.05 0.05 ^ ^ ^2 0.1 0.1 0.1 0 3 normal
execute as @e[tag=lifestealneedle,scores={abilitytimer2=51..}] at @s run particle dust_color_transition 0.8 0.2 0.2 1 0.3 0.05 0.05 ^ ^ ^3 0 0 0 0 3 normal
execute as @e[tag=lifestealneedle,scores={abilitytimer2=400..}] at @s run tag @s add projdead