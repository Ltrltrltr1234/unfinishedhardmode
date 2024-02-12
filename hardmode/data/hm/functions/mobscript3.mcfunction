execute as @a[scores={tpboss3=1..}] at @s unless entity @e[tag=creeperboss] run tellraw @s "Boss no longer exists! D:"
execute as @a[scores={tpboss3=1..}] at @s if entity @e[tag=creeperboss] run tp @s @e[tag=creeperboss,limit=1,sort=nearest]
execute as @a[scores={tpboss3=1..}] run scoreboard players set @s tpboss3 0
scoreboard players enable @a tpboss3

execute as @e[tag=creeperboss] store result score @s hp run data get entity @s Health

execute as @e[tag=creeperboss] at @s run scoreboard players add @s bossabilitytimer 1
execute as @e[tag=creeperboss] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=creeperboss] at @s run scoreboard players add @s abilitytimer3 1
execute as @e[tag=creeperboss,scores={hp=..200}] at @s run scoreboard players add @s abilitytimer4 1
execute as @e[tag=creeperboss,scores={hp=..150}] at @s run scoreboard players add @s abilitytimer5 1
execute as @e[tag=creeperboss,scores={hp=..100}] at @s run scoreboard players add @s abilitytimer6 1
execute as @e[tag=creeperboss,scores={hp=..30,abilitytimer6=..2990}] at @s run scoreboard players add @s abilitytimer6 10
#bossabilitytimer for attack state switching/blink
#abilitytimer2 for standard attacks
#abilitytimer3 for special attacks
#abilitytimer4 for advanced standard attacks
#abilitytimer5 for enrage
#abilitytimer6 for ult
execute as @e[tag=creeperboss,tag=!phase2,scores={hp=..200}] at @s run title @a[distance=..50] subtitle {"text":"ADVANCED MUNITIONS ENGAGED","color":"gray","bold":false,"italic":true}
execute as @e[tag=creeperboss,tag=!phase2,scores={hp=..200}] at @s run title @a[distance=..50] title {"text":"ANNIHILATION PROTOCOL","color":"aqua","bold":false,"italic":true}
execute as @e[tag=creeperboss,tag=!phase2,scores={hp=..200}] at @s run tellraw @a[distance=..50] {"text":"WARNING: Hypercharged Devastator has entered its second phase!","color":"red","bold":true,"italic":false}
execute as @e[tag=creeperboss,tag=!phase2,scores={hp=..200}] at @s run playsound entity.elder_guardian.curse master @a ~ ~ ~ 20 2
execute as @e[tag=creeperboss,tag=!phase2,scores={hp=..200}] at @s run particle large_smoke ~ ~ ~ 0 0 0 1 1000 normal @a
execute as @e[tag=creeperboss,tag=!phase2,scores={hp=..200}] at @s run tag @s add phase2
execute as @e[tag=creeperboss] unless score @s abilitytimer5 matches 1500..1700 at @s run particle dust_color_transition 0.471 1.000 1.000 1 0.000 0.024 0.341 ~ ~ ~ 1 1 1 1 3 normal @a
execute as @e[tag=creeperboss,tag=phase2] at @s run particle smoke ~ ~ ~ 2 0 2 0.1 10 normal @a
execute as @e[tag=creeperboss,scores={bossabilitytimer=..1}] run scoreboard players set @s attackstate 1
execute as @e[tag=creeperboss,scores={bossabilitytimer=..1}] if predicate hm:50percent run scoreboard players set @s attackstate 4
execute as @e[tag=creeperboss,scores={hp=..200,attackstate=1}] run scoreboard players set @s attackstate 2
execute as @e[tag=creeperboss,scores={hp=..200,attackstate=4}] run scoreboard players set @s attackstate 3
execute as @e[tag=creeperboss,scores={bossabilitytimer=300..}] run scoreboard players set @s bossabilitytimer 0
execute as @e[tag=creeperboss,scores={bossabilitytimer=300..}] run scoreboard players set @s abilitytimer2 0
execute as @e[tag=creeperboss,scores={attackstate=1..3,abilitytimer3=40..}] at @s run function hm:mobscript3.1
execute as @e[tag=creeperboss,scores={attackstate=2..4,abilitytimer3=40..}] at @s run function hm:mobscript3.2
execute as @e[tag=creeperboss,scores={bossabilitytimer=100}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=creeperboss,scores={bossabilitytimer=100..104,abilitytimer3=40..,abilitytimer5=..1499}] at @s if entity @p[distance=..40] run tp @s ^ ^ ^-3 ~ 0
execute as @e[tag=creeperboss,scores={bossabilitytimer=100..104,abilitytimer3=40..,abilitytimer5=..1499}] at @s if entity @p[distance=..40] run particle dust_color_transition 0.471 1.000 1.000 4 0.000 0.024 0.341 ~ ~1 ~ 0.5 0.5 0.5 0 30 normal @a
execute as @e[tag=creeperboss,scores={bossabilitytimer=100..104,abilitytimer3=40..,abilitytimer5=..1499}] at @s if entity @p[distance=..40] run playsound block.beacon.deactivate master @a ~ ~ ~ 3 2
execute as @e[tag=creeperboss,scores={bossabilitytimer=250}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=creeperboss,scores={bossabilitytimer=250..254,abilitytimer3=40..,abilitytimer5=..1499}] at @s run tp @s ^ ^ ^5 ~ 0
execute as @e[tag=creeperboss,scores={bossabilitytimer=250..254,abilitytimer3=40..,abilitytimer5=..1499}] at @s run particle dust_color_transition 0.471 1.000 1.000 4 0.000 0.024 0.341 ~ ~1 ~ 0.5 0.5 0.5 0 30 normal @a
execute as @e[tag=creeperboss,scores={bossabilitytimer=250..254,abilitytimer3=40..,abilitytimer5=..1499}] at @s run playsound entity.phantom.death master @a ~ ~ ~ 3 2
execute as @e[tag=creeperboss] at @s run effect give @s fire_resistance 1 0 true
execute as @e[tag=creeperboss] at @s run data modify entity @s Fuse set value 1000
execute as @e[tag=creeperboss,scores={hp=..200}] run attribute @s generic.armor base set 20

#moves:
#switches between 2 stances, "Wrathful Sky" and "Dance of Lustre". Special moves (SPMV) come under "Raging Thunder"
#-blink: travels very fast to or away from player.
#-(wrathful sky) AOE Lightning: creates circles which will cause lightning to strike at that location, stunning caught players.
#-(Dance of Lustre) Pulse Bolts: shoots very fast moving bolts which will explode upon contact.
#-(wrathful sky) thunderous strikes (<350 HP): charges up for 1 second before striking exploding lightning in a line towards player
#-(Dance of Lustre) static mines (<350 HP): throws 8 static mines which explode (fireworks) when touched by a player. disappear after 15 seconds
#-SPMV 1: galvanic bomb (<300 HP): throws an iron block which detonates after 1.5 seconds, releasing fulguration shards. In phase 2, throws the bomb twice.
#-SPMV 2: rapid discharge (<250 HP): dashes towards player three times, exploding 0.5 seconds after each dash.

#-PHASE 2 (<200 HP):
#-SPMV 3: devastation disc: throws a spinning devastation disc which will explode upon contact. Homes towards player with directional offset before travelling in straight line. Below 100 health, devastation disc is cast thrice
#-SPMV 4: hypercharge supernova: charges up before releasing a massive true damage explosion which also pushes players back
#-SPMV 5: caelis storm: releases caelis missiles from its body which travel outward for a moment before travelling in a straight line towards the player. After 1.5 seconds, they bend towards the player once more.
#-SPMV 6: electro barrier: gains an invincibility shield for 6 seconds before releasing a shockwave which damages and pushes back players.
#-SPMV 7 (<100 HP): shatter the sky: pushes back players if they are too near. shoots 40 shattering arrows in succession which travel at blinding speed and are unaffected by gravity.
#-enrage (<150 HP): enter an enraged state for 10 seconds where boss will move very aggressively.
#-(wrathful sky) stormraze lances: throws 3 stormraze lances skywards before having them plunge down towards the player at extreme velocity.
#-(Dance of Lustre) echoing star: shoots an exploding (tnt) large sphere of bright plasma which releases more smaller arcing cerulean blades which explode (true damage)
#-ULTIMATE: roar of thunder: imperatrix godstorm:
#push all players away from the boss. After 3 seconds of this, the boss will release 10 waves of 8 azure arcs in 8 different directions which explode upon contact but do not despawn unless timer runs out
#after that, shoot a final wave of 8 ultralight rays which constantly spawn lightning and will create explosions on impact

execute as @e[tag=creeperboss] run function hm:mobscript3.3

execute as @e[tag=creeperboss,scores={abilitytimer4=800}] at @s run scoreboard players operation @s spmvstore = @s spmv
execute as @e[tag=creeperboss,scores={abilitytimer4=1}] at @s run scoreboard players operation @s spmv = @s spmvstore
execute as @e[tag=creeperboss,scores={abilitytimer4=800..}] at @s run scoreboard players set @s spmv 0
execute as @e[tag=creeperboss,scores={abilitytimer4=800..}] at @s run scoreboard players set @s spmv 700
execute as @e[tag=creeperboss,scores={abilitytimer4=800..}] at @s run scoreboard players set @s abilitytimer3 200
execute as @e[tag=creeperboss,scores={abilitytimer4=800..}] at @s run scoreboard players set @s abilitytimer2 -50
execute as @e[tag=creeperboss,scores={abilitytimer4=800}] at @s run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 10 0.5
execute as @e[tag=creeperboss,scores={abilitytimer4=800,attackstate=2}] at @s run tellraw @a[distance=..50] {"text":"Wrathful Sky: Stormraze Lances!","color":"#528AC2","bold":true,"italic":false}
execute as @e[tag=creeperboss,scores={abilitytimer4=800,attackstate=3}] at @s run tellraw @a[distance=..50] {"text":"Dance of Lustre: Echoing Star!","color":"#ACFEFF","bold":true,"italic":false}
execute as @e[tag=creeperboss,scores={abilitytimer4=800,attackstate=2}] at @s run summon armor_stand ~ ~ ~ {Tags:["stormrazespawn"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=creeperboss,scores={abilitytimer4=800,attackstate=3}] at @s run summon armor_stand ~ ~ ~ {Tags:["echoingstar"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=creeperboss,scores={abilitytimer4=885..}] at @s run scoreboard players set @s abilitytimer4 0

execute as @e[tag=stormrazespawn] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=stormrazespawn,scores={abilitytimer2=10}] at @s at @e[tag=creeperboss,limit=1,sort=nearest,scores={abilitytimer4=800..}] run summon armor_stand ~ ~2 ~ {Tags:["stormraze"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=stormrazespawn,scores={abilitytimer2=30}] at @s at @e[tag=creeperboss,limit=1,sort=nearest,scores={abilitytimer4=800..}] run summon armor_stand ~ ~2 ~ {Tags:["stormraze"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=stormrazespawn,scores={abilitytimer2=50}] at @s at @e[tag=creeperboss,limit=1,sort=nearest,scores={abilitytimer4=800..}] run summon armor_stand ~ ~2 ~ {Tags:["stormraze"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=stormrazespawn,scores={abilitytimer2=50..}] at @s run kill @s

execute as @e[tag=creeperboss,scores={abilitytimer5=1500}] at @s run tellraw @a[distance=..50] {"text":"CRITICAL ENERGY CLIMAX - ENRAGE MODE ACTIVATED","color":"red","bold":true,"italic":false}
execute as @e[tag=creeperboss,scores={abilitytimer5=1500..1520}] at @s run playsound entity.mule.death master @a ~ ~ ~ 20 2
execute as @e[tag=creeperboss,scores={abilitytimer5=1500..1520}] at @s run particle dust_color_transition 1 0 0 2 0.4 0 0.4 ~ ~ ~ 3 3 3 0 40 normal @a
execute as @e[tag=creeperboss,scores={abilitytimer5=1500..1700}] at @s run particle dust_color_transition 0.9 0 0.1 1 0.4 0 0.4 ~ ~ ~ 1 1 1 0 10 normal @a
execute as @e[tag=creeperboss,scores={abilitytimer5=1500..1700}] at @s run attribute @s generic.movement_speed base set 0.6
execute as @e[tag=creeperboss,scores={abilitytimer5=..1499}] at @s run attribute @s generic.movement_speed base set 0.2
execute as @e[tag=creeperboss,scores={abilitytimer5=1530}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=creeperboss,scores={abilitytimer5=1530..1534}] at @s run function hm:mobscript3.4
execute as @e[tag=creeperboss,scores={abilitytimer5=1550}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=creeperboss,scores={abilitytimer5=1550..1554}] at @s run function hm:mobscript3.4
execute as @e[tag=creeperboss,scores={abilitytimer5=1570}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=creeperboss,scores={abilitytimer5=1570..1574}] at @s run function hm:mobscript3.4
execute as @e[tag=creeperboss,scores={abilitytimer5=1590}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=creeperboss,scores={abilitytimer5=1590..1594}] at @s run function hm:mobscript3.4
execute as @e[tag=creeperboss,scores={abilitytimer5=1610}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=creeperboss,scores={abilitytimer5=1610..1614}] at @s run function hm:mobscript3.4
execute as @e[tag=creeperboss,scores={abilitytimer5=1630}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=creeperboss,scores={abilitytimer5=1630..1634}] at @s run function hm:mobscript3.4
execute as @e[tag=creeperboss,scores={abilitytimer5=1650}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=creeperboss,scores={abilitytimer5=1650..1654}] at @s run function hm:mobscript3.4
execute as @e[tag=creeperboss,scores={abilitytimer5=1670}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=creeperboss,scores={abilitytimer5=1670..1674}] at @s run function hm:mobscript3.4
execute as @e[tag=creeperboss,scores={abilitytimer5=1690}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=creeperboss,scores={abilitytimer5=1690..1694}] at @s run function hm:mobscript3.4
execute as @e[tag=creeperboss,scores={abilitytimer5=1700..}] at @s run scoreboard players set @s abilitytimer5 0

execute as @e[tag=creeperboss,scores={abilitytimer6=3000..}] run scoreboard players set @s bossabilitytimer -100
execute as @e[tag=creeperboss,scores={abilitytimer6=3000..}] at @s run scoreboard players operation @s spmvstore = @s spmv
execute as @e[tag=creeperboss,scores={abilitytimer6=3000..}] run scoreboard players set @s spmv 0
execute as @e[tag=creeperboss,scores={abilitytimer6=1}] at @s run scoreboard players operation @s spmv = @s spmvstore
execute as @e[tag=creeperboss,scores={abilitytimer6=3000..}] run scoreboard players set @s abilitytimer2 -100
execute as @e[tag=creeperboss,scores={abilitytimer6=3000..}] run scoreboard players set @s abilitytimer3 -100
execute as @e[tag=creeperboss,scores={abilitytimer6=3000..}] run scoreboard players set @s abilitytimer4 -100
execute as @e[tag=creeperboss,scores={abilitytimer6=3000..}] run scoreboard players set @s abilitytimer5 -100
execute as @e[tag=creeperboss,scores={abilitytimer6=3000}] at @s run tellraw @a [{"text":"DEVASTATION ENGINE: CRITICAL DAMAGE SIGNAL. PREPARING ","color":"aqua","bold":false,"italic":false},{"text":"ROAR OF THUNDER: IMPERATRIX GODSTORM!","color":"#ADFFE7","bold":true,"italic":false}]
execute as @e[tag=creeperboss,scores={abilitytimer6=3000}] at @s run playsound entity.ender_dragon.growl master @a ~ ~ ~ 10 1
execute as @e[tag=creeperboss,scores={abilitytimer6=3000..3100}] at @s run playsound block.note_block.didgeridoo master @a ~ ~ ~ 10 1
execute as @e[tag=creeperboss,scores={abilitytimer6=3000..3100}] at @s run particle firework ~ ~ ~ 0 0 0 1 100 normal @a
execute as @e[tag=creeperboss,scores={abilitytimer6=3000..}] at @s run effect give @s resistance 1 5
execute as @e[tag=creeperboss,scores={abilitytimer6=3100}] at @s run playsound block.end_portal.spawn master @a ~ ~ ~ 20 0.5
execute as @e[tag=creeperboss,scores={abilitytimer6=3100}] at @s run title @a[distance=..50] subtitle {"text":"ULTIMUS DISCHARGE","color":"gray","bold":false,"italic":true}
execute as @e[tag=creeperboss,scores={abilitytimer6=3100}] at @s run title @a[distance=..50] title {"text":"IMPERATRIX GODSTORM","color":"#ADFFE7","bold":false,"italic":true}
execute as @e[tag=creeperboss,scores={abilitytimer6=3120}] at @s rotated ~5 ~ run function hm:mobscript3.5
execute as @e[tag=creeperboss,scores={abilitytimer6=3140}] at @s rotated ~10 ~ run function hm:mobscript3.5
execute as @e[tag=creeperboss,scores={abilitytimer6=3160}] at @s rotated ~15 ~ run function hm:mobscript3.5
execute as @e[tag=creeperboss,scores={abilitytimer6=3180}] at @s rotated ~20 ~ run function hm:mobscript3.5
execute as @e[tag=creeperboss,scores={abilitytimer6=3200}] at @s rotated ~25 ~ run function hm:mobscript3.5
execute as @e[tag=creeperboss,scores={abilitytimer6=3220}] at @s rotated ~30 ~ run function hm:mobscript3.5
execute as @e[tag=creeperboss,scores={abilitytimer6=3240}] at @s rotated ~35 ~ run function hm:mobscript3.5
execute as @e[tag=creeperboss,scores={abilitytimer6=3260}] at @s rotated ~40 ~ run function hm:mobscript3.5
execute as @e[tag=creeperboss,scores={abilitytimer6=3280}] at @s rotated ~ ~ run function hm:mobscript3.5
execute as @e[tag=creeperboss,scores={abilitytimer6=3300}] at @s rotated ~5 ~ run function hm:mobscript3.5
execute as @e[tag=creeperboss,scores={abilitytimer6=3320}] at @s rotated ~25 ~ run function hm:mobscript3.5
execute as @e[tag=creeperboss,scores={abilitytimer6=3320}] at @s run tag @e[tag=azurearc,limit=8,sort=nearest] add ultralight
execute as @e[tag=creeperboss,scores={abilitytimer6=3320}] at @s run tag @e[tag=ultralight,limit=8,sort=nearest] remove azurearc

execute as @e[tag=creeperboss,scores={abilitytimer6=3420..}] at @s run scoreboard players set @s abilitytimer6 0

execute as @e[tag=galbomb] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=galbomb] unless score @s abilitytimer3 matches 1.. at @s run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ~ ~1 ~ 1 1 1 0 10 normal @a
execute as @e[tag=galbomb,scores={abilitytimer2=10..}] at @s unless block ~ ~-1 ~ air run scoreboard players add @s abilitytimer3 1
execute as @e[tag=galbomb,scores={abilitytimer3=1}] at @s run tp @s ~ ~-1 ~
execute as @e[tag=galbomb,scores={abilitytimer3=1}] at @s run playsound entity.zombie.attack_iron_door master @a ~ ~ ~ 3 0.5
execute as @e[tag=galbomb,scores={abilitytimer3=29..}] at @s run effect give @e[distance=..7,type=!player] resistance 2 10
execute as @e[tag=galbomb,scores={abilitytimer3=29}] at @s run summon creeper ~ ~1 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:2b,Fuse:0,ignited:1b,CustomName:'{"text":"Galvanic Force","color":"aqua","bold":true}'}
execute as @e[tag=galbomb,scores={abilitytimer3=30..}] at @s run summon arrow ~ ~2 ~ {Tags:["fulgshard"],NoGravity:1b,CustomNameVisible:0b,pickup:0b,damage:12d,crit:1b,PierceLevel:5b,Color:10726655,Motion:[1.0,0.0,0.0],CustomName:'{"text":"Fulguration Shard","color":"dark_blue","bold":true,"italic":false}',SoundEvent:"block.anvil.land",CustomPotionEffects:[{Id:2,Amplifier:6b,Duration:20}]}
execute as @e[tag=galbomb,scores={abilitytimer3=30..}] at @s run summon arrow ~ ~2 ~ {Tags:["fulgshard"],NoGravity:1b,CustomNameVisible:0b,pickup:0b,damage:12d,crit:1b,PierceLevel:5b,Color:10726655,Motion:[1.0,0.0,-1.0],CustomName:'{"text":"Fulguration Shard","color":"dark_blue","bold":true,"italic":false}',SoundEvent:"block.anvil.land",CustomPotionEffects:[{Id:2,Amplifier:6b,Duration:20}]}
execute as @e[tag=galbomb,scores={abilitytimer3=30..}] at @s run summon arrow ~ ~2 ~ {Tags:["fulgshard"],NoGravity:1b,CustomNameVisible:0b,pickup:0b,damage:12d,crit:1b,PierceLevel:5b,Color:10726655,Motion:[1.0,0.0,1.0],CustomName:'{"text":"Fulguration Shard","color":"dark_blue","bold":true,"italic":false}',SoundEvent:"block.anvil.land",CustomPotionEffects:[{Id:2,Amplifier:6b,Duration:20}]}
execute as @e[tag=galbomb,scores={abilitytimer3=30..}] at @s run summon arrow ~ ~2 ~ {Tags:["fulgshard"],NoGravity:1b,CustomNameVisible:0b,pickup:0b,damage:12d,crit:1b,PierceLevel:5b,Color:10726655,Motion:[0.0,0.0,1.0],CustomName:'{"text":"Fulguration Shard","color":"dark_blue","bold":true,"italic":false}',SoundEvent:"block.anvil.land",CustomPotionEffects:[{Id:2,Amplifier:6b,Duration:20}]}
execute as @e[tag=galbomb,scores={abilitytimer3=30..}] at @s run summon arrow ~ ~2 ~ {Tags:["fulgshard"],NoGravity:1b,CustomNameVisible:0b,pickup:0b,damage:12d,crit:1b,PierceLevel:5b,Color:10726655,Motion:[0.0,0.0,-1.0],CustomName:'{"text":"Fulguration Shard","color":"dark_blue","bold":true,"italic":false}',SoundEvent:"block.anvil.land",CustomPotionEffects:[{Id:2,Amplifier:6b,Duration:20}]}
execute as @e[tag=galbomb,scores={abilitytimer3=30..}] at @s run summon arrow ~ ~2 ~ {Tags:["fulgshard"],NoGravity:1b,CustomNameVisible:0b,pickup:0b,damage:12d,crit:1b,PierceLevel:5b,Color:10726655,Motion:[-1.0,0.0,0.0],CustomName:'{"text":"Fulguration Shard","color":"dark_blue","bold":true,"italic":false}',SoundEvent:"block.anvil.land",CustomPotionEffects:[{Id:2,Amplifier:6b,Duration:20}]}
execute as @e[tag=galbomb,scores={abilitytimer3=30..}] at @s run summon arrow ~ ~2 ~ {Tags:["fulgshard"],NoGravity:1b,CustomNameVisible:0b,pickup:0b,damage:12d,crit:1b,PierceLevel:5b,Color:10726655,Motion:[-1.0,0.0,1.0],CustomName:'{"text":"Fulguration Shard","color":"dark_blue","bold":true,"italic":false}',SoundEvent:"block.anvil.land",CustomPotionEffects:[{Id:2,Amplifier:6b,Duration:20}]}
execute as @e[tag=galbomb,scores={abilitytimer3=30..}] at @s run summon arrow ~ ~2 ~ {Tags:["fulgshard"],NoGravity:1b,CustomNameVisible:0b,pickup:0b,damage:12d,crit:1b,PierceLevel:5b,Color:10726655,Motion:[-1.0,0.0,-1.0],CustomName:'{"text":"Fulguration Shard","color":"dark_blue","bold":true,"italic":false}',SoundEvent:"block.anvil.land",CustomPotionEffects:[{Id:2,Amplifier:6b,Duration:20}]}
execute as @e[tag=galbomb,scores={abilitytimer3=30..}] at @s run particle firework ~ ~ ~ 0 0 0 0.5 100 normal @a
execute as @e[tag=galbomb,scores={abilitytimer3=30..}] at @s run particle explosion ~ ~ ~ 0 0 0 0.5 10 normal @a
execute as @e[tag=galbomb,scores={abilitytimer3=30..}] at @s run playsound entity.generic.explode master @a ~ ~ ~ 3 2
execute as @e[tag=galbomb,scores={abilitytimer3=30..}] at @s run playsound item.trident.thunder master @a ~ ~ ~ 2 1
execute as @e[tag=galbomb,scores={abilitytimer3=30..}] at @s run kill @s

execute as @e[tag=ddisc] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=ddisc] at @s run playsound entity.evoker_fangs.attack master @a ~ ~ ~ 1.2 2
execute as @e[tag=ddisc,scores={abilitytimer2=1}] at @s run scoreboard players set @s attackstate 1
execute as @e[tag=ddisc,scores={abilitytimer2=1}] at @s if predicate hm:50percent run tag @s add alternateddisc
execute as @e[tag=ddisc] at @s if entity @p[distance=..10] run scoreboard players set @s attackstate 2
execute as @e[tag=ddisc,tag=!alternateddisc,scores={attackstate=1}] at @s facing entity @p feet rotated ~50 ~ run tp @s ^ ^ ^1
execute as @e[tag=ddisc,tag=alternateddisc,scores={attackstate=1}] at @s facing entity @p feet rotated ~-50 ~ run tp @s ^ ^ ^1
execute as @e[tag=ddisc,scores={attackstate=1}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=ddisc,scores={attackstate=2}] at @s rotated ~ 0 run tp @s ^ ^ ^0.4
execute as @e[tag=ddisc] at @s unless entity @e[distance=..4,tag=ddiscp] run summon armor_stand ~ ~ ~ {Tags:["ddiscp"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=ddisc] at @s if entity @p[distance=..4] run effect give @e[distance=..6,type=!player] resistance 1 5
execute as @e[tag=ddisc] at @s if entity @p[distance=..4] run summon creeper ~ ~1 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:5b,Fuse:0,ignited:1b,CustomName:'{"text":"Devastation Disc","color":"aqua","bold":true}'}
execute as @e[tag=ddisc] at @s if entity @p[distance=..4] run playsound block.lava.extinguish master @a ~ ~ ~ 5 0.5
execute as @e[tag=ddisc] at @s if entity @p[distance=..4] run kill @s
execute as @e[tag=ddisc,scores={abilitytimer2=150..}] at @s run kill @s
execute as @e[tag=ddiscp] at @s unless entity @e[distance=..4,tag=ddisc] run kill @s
execute as @e[tag=ddisc] at @s rotated as @e[limit=1,sort=nearest,tag=ddiscp] run tp @e[limit=1,sort=nearest,tag=ddiscp] ~ ~ ~ ~ ~
execute as @e[tag=ddiscp] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=ddiscp] at @s rotated ~ ~ run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.1 0.1 0.1 0 15
execute as @e[tag=ddiscp] at @s rotated ~120 ~ run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.1 0.1 0.1 0 15
execute as @e[tag=ddiscp] at @s rotated ~240 ~ run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.1 0.1 0.1 0 15
execute as @e[tag=ddiscp] at @s rotated ~60 ~ run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.1 0.1 0.1 0 15
execute as @e[tag=ddiscp] at @s rotated ~180 ~ run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.1 0.1 0.1 0 15
execute as @e[tag=ddiscp] at @s rotated ~300 ~ run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.1 0.1 0.1 0 15
execute as @e[tag=ddiscp] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=ddiscp] at @s rotated ~ ~ run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.1 0.1 0.1 0 15
execute as @e[tag=ddiscp] at @s rotated ~120 ~ run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.1 0.1 0.1 0 15
execute as @e[tag=ddiscp] at @s rotated ~240 ~ run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.1 0.1 0.1 0 15
execute as @e[tag=ddiscp] at @s rotated ~60 ~ run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.1 0.1 0.1 0 15
execute as @e[tag=ddiscp] at @s rotated ~180 ~ run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.1 0.1 0.1 0 15
execute as @e[tag=ddiscp] at @s rotated ~300 ~ run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.1 0.1 0.1 0 15
execute as @e[tag=ddiscp] at @s run particle end_rod ~ ~ ~ 0 0 0 0.5 5 normal @a

execute as @e[tag=caelismissile] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=caelismissile] at @s run playsound block.fire.extinguish master @a ~ ~ ~ 0.8 1
execute as @e[tag=caelismissile] at @s run particle large_smoke ^ ^ ^-1 0.1 0.1 0.1 0.1 2 normal @a
execute as @e[tag=caelismissile] at @s run particle dust_color_transition 0.722 0.722 1.000 1 0.063 0.004 0.451 ^ ^ ^ 0.3 0.3 0.3 0.05 20 normal @a
execute as @e[tag=caelismissile] at @s run particle dust_color_transition 0.722 0.722 1.000 1 0.063 0.004 0.451 ^ ^ ^1 0.1 0.1 0.1 0.02 10 normal @a
execute as @e[tag=caelismissile] at @s run particle dust_color_transition 0.722 0.722 1.000 1 0.063 0.004 0.451 ^ ^ ^2 0.1 0.1 0.1 0.02 10 normal @a
execute as @e[tag=caelismissile,scores={abilitytimer2=..20}] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=caelismissile,scores={abilitytimer2=21}] at @s run playsound block.lever.click master @a ~ ~ ~ 5 2
execute as @e[tag=caelismissile,scores={abilitytimer2=21}] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @e[tag=caelismissile,scores={abilitytimer2=21..50}] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=caelismissile,scores={abilitytimer2=51}] at @s run playsound block.lever.click master @a ~ ~ ~ 5 2
execute as @e[tag=caelismissile,scores={abilitytimer2=51}] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @e[tag=caelismissile,scores={abilitytimer2=51..}] at @s run tp @s ^ ^ ^1
execute as @e[tag=caelismissile] at @s unless block ^ ^ ^1 air run tag @s add projdead
execute as @e[tag=caelismissile] at @s if entity @p[distance=..2] run tag @s add projdead
execute as @e[tag=caelismissile,scores={abilitytimer2=150..}] at @s run tag @s add projdead
execute as @e[tag=caelismissile,tag=projdead] at @s run playsound entity.generic.explode master @a ~ ~ ~ 1 0.5
execute as @e[tag=caelismissile,tag=projdead] at @s run playsound block.fire.extinguish master @a ~ ~ ~ 5 0.5
execute as @e[tag=caelismissile,tag=projdead] at @s run particle explosion ~ ~ ~ 1 1 1 0 10 normal @a
execute as @e[tag=caelismissile,tag=projdead] at @s run particle firework ~ ~ ~ 0 0 0 0.2 100 normal @a
execute as @e[tag=caelismissile,tag=projdead] at @s run effect give @a[distance=..5] instant_damage 1 1
execute as @e[tag=caelismissile,tag=projdead] at @s run kill @s

execute as @e[tag=fulgshard] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=fulgshard,scores={abilitytimer2=15..}] at @s run kill @s
kill @e[tag=fulgshard,nbt={inGround:1b}]

execute as @e[tag=electrobarrier] at @s unless entity @e[distance=..4,tag=creeperboss,scores={abilitytimer3=0..120,spmv=6}] run kill @s
execute as @e[tag=electrobarrier] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=electrobarrier] at @s run particle dust_color_transition 0.894 0.769 1.000 2 0.384 0.341 1.000 ^ ^0.1 ^4 0 0 0 0 10 normal @a
execute as @e[tag=electrobarrier] at @s run particle dust_color_transition 0.894 0.769 1.000 2 0.384 0.341 1.000 ^ ^0.9 ^4 0 0 0 0 10 normal @a
execute as @e[tag=electrobarrier] at @s run particle dust_color_transition 0.894 0.769 1.000 2 0.384 0.341 1.000 ^ ^1.7 ^4 0 0 0 0 10 normal @a
execute as @e[tag=electrobarrier] at @s run particle dust_color_transition 0.894 0.769 1.000 2 0.384 0.341 1.000 ^ ^2.5 ^4 0 0 0 0 10 normal @a
execute as @e[tag=electrobarrier] at @s run particle dust_color_transition 0.894 0.769 1.000 2 0.384 0.341 1.000 ^ ^3.3 ^4 0 0 0 0 10 normal @a
execute as @e[tag=electrobarrier] at @s run particle dust_color_transition 0.894 0.769 1.000 2 0.384 0.341 1.000 ^ ^0.1 ^-4 0 0 0 0 10 normal @a
execute as @e[tag=electrobarrier] at @s run particle dust_color_transition 0.894 0.769 1.000 2 0.384 0.341 1.000 ^ ^0.9 ^-4 0 0 0 0 10 normal @a
execute as @e[tag=electrobarrier] at @s run particle dust_color_transition 0.894 0.769 1.000 2 0.384 0.341 1.000 ^ ^1.7 ^-4 0 0 0 0 10 normal @a
execute as @e[tag=electrobarrier] at @s run particle dust_color_transition 0.894 0.769 1.000 2 0.384 0.341 1.000 ^ ^2.5 ^-4 0 0 0 0 10 normal @a
execute as @e[tag=electrobarrier] at @s run particle dust_color_transition 0.894 0.769 1.000 2 0.384 0.341 1.000 ^ ^3.3 ^-4 0 0 0 0 10 normal @a
execute as @e[tag=creeperboss] at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air replace water
execute as @e[tag=creeperboss] at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air replace lava

execute as @e[tag=shatterarrow] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=shatterarrow,scores={abilitytimer2=1}] at @s run playsound entity.firework_rocket.shoot master @a ~ ~ ~ 5 2
execute as @e[tag=shatterarrow,scores={abilitytimer2=1}] at @s run particle flash ~ ~ ~ 0 0 0 0 1 normal @a
execute as @e[tag=shatterarrow,scores={abilitytimer2=1}] at @s run particle end_rod ~ ~ ~ 0 0 0 0.5 40 normal @a
execute as @e[tag=shatterarrow,scores={abilitytimer2=1}] at @s run function hm:motion-6
execute as @e[tag=shatterarrow] at @s run particle electric_spark ~ ~ ~ 1 1 1 0 5 normal @a
execute as @e[tag=shatterarrow] at @s run particle glow ~ ~ ~ 0 0 0 0.3 5 normal @a
execute as @e[tag=shatterarrow] at @s run particle smoke ~ ~ ~ 0 0 0 0.1 5 normal @a
execute as @e[tag=shatterarrow,tag=projdead] at @s run playsound entity.zombie.attack_iron_door master @a ~ ~ ~ 3 2
execute as @e[tag=shatterarrow,tag=projdead] at @s run particle flash ~ ~ ~ 0.3 0.3 0.3 0 10 normal @a
execute as @e[tag=shatterarrow,tag=projdead] at @s run particle soul_fire_flame ~ ~ ~ 0 0 0 0.8 50 normal @a
kill @e[tag=shatterarrow,tag=projdead]
execute as @e[tag=shatterarrow,scores={abilitytimer2=20..}] at @s run tag @s add projdead
tag @e[tag=shatterarrow,nbt={inGround:1b}] add projdead

execute as @e[tag=azurearc] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=azurearc] at @s run playsound entity.zombie_villager.cure master @a ~ ~ ~ 1 2
execute as @e[tag=azurearc,scores={abilitytimer2=1}] at @s run tp @s ~ ~ ~ facing entity @e[tag=creeperboss,limit=1,sort=nearest]
execute as @e[tag=azurearc,scores={abilitytimer2=0..15}] at @s run tp ^ ^ ^-0.3
execute as @e[tag=azurearc,scores={abilitytimer2=16..}] at @s run tp ^ ^ ^-1
execute as @e[tag=azurearc,scores={abilitytimer2=100..}] at @s run kill @s
execute as @e[tag=azurearc] at @s rotated ~ ~ run particle firework ~ ~ ~ 0 0 0 0.4 10 normal @a
execute as @e[tag=azurearc] at @s rotated ~ ~ run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.3 0.4 0.3 0 15 normal @a
execute as @e[tag=azurearc] at @s rotated ~ ~10 run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.3 0.4 0.3 0 15 normal @a
execute as @e[tag=azurearc] at @s rotated ~ ~-10 run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.3 0.4 0.3 0 15 normal @a
execute as @e[tag=azurearc] at @s rotated ~ ~20 run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.3 0.4 0.3 0 15 normal @a
execute as @e[tag=azurearc] at @s rotated ~ ~-20 run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.3 0.4 0.3 0 15 normal @a
execute as @e[tag=azurearc] at @s rotated ~ ~30 run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.3 0.4 0.3 0 15 normal @a
execute as @e[tag=azurearc] at @s rotated ~ ~-30 run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.3 0.4 0.3 0 15 normal @a
execute as @e[tag=azurearc] at @s rotated ~ ~40 run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.3 0.4 0.3 0 15 normal @a
execute as @e[tag=azurearc] at @s rotated ~ ~-40 run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.3 0.4 0.3 0 15 normal @a
execute as @e[tag=azurearc] at @s rotated ~ ~50 run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.3 0.4 0.3 0 15 normal @a
execute as @e[tag=azurearc] at @s rotated ~ ~-50 run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.3 0.4 0.3 0 15 normal @a
execute as @e[tag=azurearc] at @s rotated ~ ~60 run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.3 0.4 0.3 0 15 normal @a
execute as @e[tag=azurearc] at @s rotated ~ ~-60 run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ^ ^ ^-5 0.3 0.4 0.3 0 15 normal @a
execute as @e[tag=azurearc] at @s positioned ^ ^ ^-5 if entity @p[distance=..3] run effect give @e[distance=..6,type=!player] resistance 1 5
execute as @e[tag=azurearc] at @s positioned ^ ^ ^-5 if entity @p[distance=..3] run summon creeper ~ ~1 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:4b,Fuse:0,ignited:1b,CustomName:'{"text":"Roar of Thunder: Azure Arc","color":"aqua","bold":true}'}
execute as @e[tag=azurearc] at @s positioned ^ ^ ^-5 if entity @p[distance=..3] run playsound item.totem.use master @a ~ ~ ~ 5 2
execute as @e[tag=azurearc] at @s positioned ^ ^ ^-5 if entity @p[distance=..3] run particle end_rod ~ ~ ~ 0 0 0 1 100 normal @a
execute as @e[tag=azurearc] at @s positioned ^ ^ ^-5 if entity @p[distance=..3] run particle dust_color_transition 0.471 1.000 1.000 2 0.000 0.024 0.341 ~ ~ ~ 3 3 3 0 200 normal @a

execute as @e[tag=ultralight] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=ultralight] at @s run playsound entity.zombie_villager.cure master @a ~ ~ ~ 1 2
execute as @e[tag=ultralight] at @s run playsound block.beacon.deactivate master @a ~ ~ ~ 3 2
execute as @e[tag=ultralight,scores={abilitytimer2=1}] at @s run tp @s ~ ~ ~ facing entity @e[tag=creeperboss,limit=1,sort=nearest]
execute as @e[tag=ultralight] at @s run tp ^ ^ ^-1.5
execute as @e[tag=ultralight,scores={abilitytimer2=80..}] at @s run kill @s
execute as @e[tag=ultralight] at @s run particle firework ~ ~ ~ 0 0 0 0.6 20 normal @a
execute as @e[tag=ultralight] at @s run particle flash ~ ~ ~ 0 0 0 0 1 normal @a
execute as @e[tag=ultralight] at @s run summon lightning_bolt ~ ~ ~
execute as @e[tag=ultralight] at @s positioned ^ ^ ^4 if entity @p[distance=..4] run effect give @e[distance=..6,type=!player] resistance 1 5
execute as @e[tag=ultralight] at @s positioned ^ ^ ^4 if entity @p[distance=..4] run summon creeper ~ ~1 ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:4b,Fuse:0,ignited:1b,CustomName:'{"text":"Roar of Thunder: Ultralight Ray","color":"aqua","bold":true}'}
execute as @e[tag=ultralight] at @s positioned ^ ^ ^4 if entity @p[distance=..4] run playsound item.totem.use master @a ~ ~ ~ 5 2
execute as @e[tag=ultralight] at @s positioned ^ ^ ^4 if entity @p[distance=..4] run particle end_rod ~ ~ ~ 0 0 0 1 100 normal @a
execute as @e[tag=ultralight] at @s positioned ^ ^ ^4 if entity @p[distance=..4] run particle flash ~ ~ ~ 3 3 3 0 200 normal @a