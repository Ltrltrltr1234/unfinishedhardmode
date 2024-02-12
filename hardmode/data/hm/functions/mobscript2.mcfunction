execute as @a[scores={tpboss2=1..}] at @s unless entity @e[tag=skeletonboss] run tellraw @s "Boss no longer exists! D:"
execute as @a[scores={tpboss2=1..}] at @s if entity @e[tag=skeletonboss] run tp @s @e[tag=skeletonboss,limit=1,sort=nearest]
execute as @a[scores={tpboss2=1..}] run scoreboard players set @s tpboss2 0
scoreboard players enable @a tpboss2

execute as @e[tag=skeletonboss] store result score @s hp run data get entity @s Health

execute as @e[tag=skeletonboss] at @s run scoreboard players add @s bossabilitytimer 1
execute as @e[tag=skeletonboss] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=skeletonboss] at @s run scoreboard players add @s abilitytimer3 1
execute as @e[tag=skeletonboss,scores={hp=..80}] at @s run scoreboard players add @s abilitytimer4 1
execute as @e[tag=skeletonboss,scores={hp=..100}] at @s run scoreboard players add @s abilitytimer5 1
execute as @e[tag=skeletonboss,scores={hp=..80}] at @s run attribute @s generic.armor base set 10
execute as @e[tag=skeletonboss,scores={bossabilitytimer=220..250}] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=skeletonboss,scores={bossabilitytimer=190..250}] at @s run particle soul ~ ~ ~ 0 0 0 0.1 5 normal @a
execute as @e[tag=skeletonboss,scores={bossabilitytimer=220..250}] run scoreboard players add @s arrowstorm 1
execute as @e[tag=skeletonboss,scores={bossabilitytimer=220..250,arrowstorm=3..}] run scoreboard players set @s arrowstorm 0
execute as @e[tag=skeletonboss,scores={bossabilitytimer=220..250,arrowstorm=2}] at @s run playsound entity.wither.hurt master @a ~ ~ ~ 1 2 0
execute as @e[tag=skeletonboss,scores={bossabilitytimer=220..250,arrowstorm=2}] at @s anchored eyes run summon arrow ^ ^ ^1 {pickup:2b,damage:8d,crit:1b,PierceLevel:5b,Tags:["spreadarrow"],SoundEvent:"entity.wither_skeleton.hurt",Potion:"minecraft:weakness"}
execute as @e[tag=skeletonboss,scores={bossabilitytimer=220..250,arrowstorm=2}] at @s run execute as @e[tag=spreadarrow,distance=..3,nbt={inGround:false}] at @s run function hm:motion-1
execute as @e[tag=skeletonboss] at @s run kill @e[tag=spreadarrow,nbt={inGround:1b}]
execute as @e[tag=skeletonboss,scores={bossabilitytimer=250..}] run scoreboard players set @s bossabilitytimer 0

execute as @e[tag=skeletonboss,scores={abilitytimer2=150..200}] at @s run particle enchanted_hit ~ ~ ~ 1 1 1 0.5 20 normal @a
execute as @e[tag=skeletonboss,scores={abilitytimer2=200}] at @s run function hm:mobscript2.1
execute as @e[tag=skeletonboss,scores={abilitytimer2=210}] at @s run function hm:mobscript2.1
execute as @e[tag=skeletonboss,scores={abilitytimer2=220}] at @s run function hm:mobscript2.1
execute as @e[tag=skeletonboss,scores={abilitytimer2=230}] at @s run function hm:mobscript2.1
execute as @e[tag=skeletonboss,scores={abilitytimer2=240}] at @s run function hm:mobscript2.1
execute as @e[tag=skeletonboss,scores={abilitytimer2=205,hp=..80}] at @s run function hm:mobscript2.1
execute as @e[tag=skeletonboss,scores={abilitytimer2=215,hp=..80}] at @s run function hm:mobscript2.1
execute as @e[tag=skeletonboss,scores={abilitytimer2=225,hp=..80}] at @s run function hm:mobscript2.1
execute as @e[tag=skeletonboss,scores={abilitytimer2=235,hp=..80}] at @s run function hm:mobscript2.1
execute as @e[tag=skeletonboss,scores={abilitytimer2=245,hp=..80}] at @s run function hm:mobscript2.1
execute as @e[tag=skeletonboss,scores={abilitytimer2=260}] at @s run tag @e[tag=barragearrow,sort=nearest,limit=5] add arrowunleashed
execute as @e[tag=skeletonboss,scores={abilitytimer2=260,hp=..80}] at @s run tag @e[tag=barragearrow,sort=nearest,limit=10] add arrowunleashed
execute as @e[tag=skeletonboss,scores={abilitytimer2=260}] at @s run playsound block.piston.extend master @a ~ ~ ~ 3 2
execute as @e[tag=skeletonboss,scores={abilitytimer2=260}] at @s run execute as @e[tag=barragearrow,limit=5,sort=nearest,nbt={inGround:false}] at @s run function hm:motion-1.5
execute as @e[tag=skeletonboss,scores={abilitytimer2=260,hp=..80}] at @s run execute as @e[tag=barragearrow,limit=10,sort=nearest,nbt={inGround:false}] at @s run function hm:motion-1.5

execute as @e[tag=skeletonboss] at @s unless block ~ ~1 ~ air unless block ~ ~1 ~ water run tp @s ^ ^ ^1 facing entity @p[distance=..50] feet
execute as @e[tag=skeletonboss,scores={abilitytimer3=100..110}] at @s if entity @p[distance=..50] at @s facing entity @p eyes rotated ~ 0 if block ^ ^3 ^-2 air run tp @s ^ ^0.3 ^-1.25
execute as @e[tag=skeletonboss] at @s run data modify entity @s FallDistance set value 0

execute as @e[tag=skeletonboss,scores={abilitytimer3=250..260}] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=skeletonboss,scores={abilitytimer3=220..}] at @s run particle end_rod ~ ~ ~ 0 0 0 0.2 10 normal @a
execute as @e[tag=skeletonboss,scores={abilitytimer3=250}] at @s if entity @p[distance=5..50] run playsound entity.enderman.scream master @a ~ ~ ~ 5 1
execute as @e[tag=skeletonboss,scores={abilitytimer3=250}] at @s if entity @p[distance=5..50] anchored eyes facing entity @p eyes run summon arrow ^ ^ ^1 {pickup:2b,damage:10d,crit:1b,PierceLevel:5b,Tags:["boltofruin"],SoundEvent:"entity.generic.explode"}
execute as @e[tag=skeletonboss,scores={abilitytimer3=250}] at @s if entity @p[distance=5..50] run execute as @e[tag=boltofruin,distance=..3,nbt={inGround:false}] at @s run function hm:motion-1
execute as @e[tag=skeletonboss,scores={abilitytimer3=260,hp=..80}] if entity @p[distance=5..50] at @s run playsound entity.enderman.scream master @a ~ ~ ~ 5 1
execute as @e[tag=skeletonboss,scores={abilitytimer3=260,hp=..80}] if entity @p[distance=5..50] at @s anchored eyes facing entity @p eyes run summon arrow ^ ^ ^1 {pickup:2b,damage:15d,crit:1b,PierceLevel:5b,Tags:["boltofruin"],SoundEvent:"entity.generic.explode"}
execute as @e[tag=skeletonboss,scores={abilitytimer3=260,hp=..80}] if entity @p[distance=5..50] at @s run execute as @e[tag=boltofruin,distance=..3,nbt={inGround:false}] at @s run function hm:motion-1
execute as @e[tag=boltofruin,nbt={inGround:0b}] at @s run particle cloud ~ ~ ~ 0 0 0 0.2 10 normal @a
execute as @e[tag=boltofruin,nbt={inGround:0b}] at @s run particle end_rod ~ ~ ~ 0 0 0 0.4 5 normal @a
execute as @e[tag=boltofruin,nbt={inGround:1b}] at @s run effect give @e[type=!player,distance=..5] resistance 1 5 true
execute as @e[tag=boltofruin,nbt={inGround:1b}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:0b,ExplosionRadius:2b,Fuse:0,ignited:1b,CustomName:'{"text":"Bolt of Ruin","color":"dark_gray","bold":true}'}
execute as @e[tag=boltofruin] at @s if entity @p[distance=..2] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:0b,ExplosionRadius:2b,Fuse:0,ignited:1b,CustomName:'{"text":"Bolt of Ruin","color":"dark_gray","bold":true}'}
kill @e[tag=boltofruin,nbt={inGround:1b}]
execute as @e[tag=skeletonboss,scores={abilitytimer3=275..}] run scoreboard players set @s abilitytimer3 0

execute as @e[tag=skeletonboss,scores={abilitytimer3=90,hp=..80}] at @s if entity @p[distance=8..] run particle dust 0.9 0.9 0.9 2 ~ ~ ~ 5 0 5 0 50 normal @a
execute as @e[tag=skeletonboss,scores={abilitytimer3=90,hp=..80}] at @s if entity @p[distance=8..] run summon armor_stand ^ ^ ^1 {Tags:["ruinspikes"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}

execute as @e[tag=skeletonboss,scores={abilitytimer4=50,hp=..80}] at @s run execute as @p[distance=..50] at @s rotated ~ 0 run summon armor_stand ^ ^-1 ^15 {Tags:["arrowfall"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=skeletonboss,scores={abilitytimer4=800..}] run scoreboard players set @s abilitytimer4 0

execute as @e[tag=skeletonboss,scores={abilitytimer2=600}] at @s run summon skeleton ~ ~1 ~
execute as @e[tag=skeletonboss,scores={abilitytimer2=100}] if predicate hm:50percent at @s run summon skeleton ~ ~1 ~
execute as @e[tag=skeletonboss,scores={abilitytimer2=600}] at @s run particle large_smoke ~ ~ ~ 0 0 0 0 30 normal @a
execute as @e[tag=skeletonboss,scores={abilitytimer2=600}] at @s run playsound entity.evoker.cast_spell master @a ~ ~ ~ 1 0.5 0
execute as @e[tag=skeletonboss,scores={abilitytimer2=700..}] at @s run scoreboard players set @s abilitytimer2 0

execute as @e[tag=skeletonboss,scores={abilitytimer4=450,hp=..130}] at @s at @p[distance=9..50] run summon armor_stand ^ ^40 ^5 {Tags:["soulsmite"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=skeletonboss,scores={abilitytimer4=400,hp=..110}] at @s at @p[distance=9..50] run summon armor_stand ^ ^40 ^-5 {Tags:["soulsmite"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=skeletonboss,scores={abilitytimer4=350,hp=..90}] at @s at @p[distance=9..50] run summon armor_stand ^5 ^40 ^ {Tags:["soulsmite"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=skeletonboss,scores={abilitytimer4=300,hp=..70}] at @s at @p[distance=9..50] run summon armor_stand ^-5 ^40 ^ {Tags:["soulsmite"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=skeletonboss,scores={abilitytimer4=300,hp=..130}] at @s run scoreboard players remove @s bossabilitytimer 200
execute as @e[tag=skeletonboss,scores={abilitytimer4=300,hp=..130}] at @s run scoreboard players remove @s abilitytimer2 400

execute as @e[tag=arrowfall] run scoreboard players add @s abilitytimer2 1
execute as @e[tag=arrowfall] at @s run tp @s ~ ~ ~ ~20 ~
execute as @e[tag=arrowfall] at @s run particle poof ^ ^1 ^5 0 0 0 0 2 normal @a
execute as @e[tag=arrowfall] at @s run particle poof ^ ^1 ^-5 0 0 0 0 2 normal @a
execute as @e[tag=arrowfall] at @s run particle poof ^ ^2 ^5 0 0 0 0 2 normal @a
execute as @e[tag=arrowfall] at @s run particle poof ^ ^2 ^-5 0 0 0 0 2 normal @a
execute as @e[tag=arrowfall] at @s run particle poof ^ ^ ^5 0 0 0 0 2 normal @a
execute as @e[tag=arrowfall] at @s run particle poof ^ ^ ^-5 0 0 0 0 2 normal @a
execute as @e[tag=arrowfall,scores={abilitytimer2=30..110}] run scoreboard players add @s arrowstorm 1
execute as @e[tag=arrowfall,scores={abilitytimer2=30..110,arrowstorm=4..}] run scoreboard players set @s arrowstorm 1
execute as @e[tag=arrowfall,scores={abilitytimer2=30..110}] at @s run effect give @e[type=!player,distance=..5] resistance 1 10 true
execute as @e[tag=arrowfall,scores={abilitytimer2=30..110,arrowstorm=1}] at @s run summon arrow ^1.5 ^11 ^1.5 {damage:12d,crit:1b,PierceLevel:5b,Color:5066061,Motion:[0.0,-1.0,0.0],Tags:["arrowrain"],CustomName:'{"text":"Arrow Rain","color":"gray","bold":true,"italic":true}'}
execute as @e[tag=arrowfall,scores={abilitytimer2=30..110,arrowstorm=1..2}] at @s run summon arrow ^-3 ^11 ^1.5 {damage:12d,crit:1b,PierceLevel:5b,Color:5066061,Motion:[0.0,-1.0,0.0],Tags:["arrowrain"],CustomName:'{"text":"Arrow Rain","color":"gray","bold":true,"italic":true}'}
execute as @e[tag=arrowfall,scores={abilitytimer2=30..110,arrowstorm=1..2}] at @s run summon arrow ^-2 ^11 ^-4 {damage:12d,crit:1b,PierceLevel:5b,Color:5066061,Motion:[0.0,-1.0,0.0],Tags:["arrowrain"],CustomName:'{"text":"Arrow Rain","color":"gray","bold":true,"italic":true}'}
execute as @e[tag=arrowfall,scores={abilitytimer2=30..110,arrowstorm=2..3}] at @s run summon arrow ^ ^11 ^-4.5 {damage:12d,crit:1b,PierceLevel:5b,Color:5066061,Motion:[0.0,-1.0,0.0],Tags:["arrowrain"],CustomName:'{"text":"Arrow Rain","color":"gray","bold":true,"italic":true}'}
execute as @e[tag=arrowfall,scores={abilitytimer2=30..110,arrowstorm=3}] at @s run summon arrow ^1 ^11 ^ {damage:12d,crit:1b,PierceLevel:5b,Color:5066061,Motion:[0.0,-1.0,0.0],Tags:["arrowrain"],CustomName:'{"text":"Arrow Rain","color":"gray","bold":true,"italic":true}'}
execute as @e[tag=arrowfall,scores={abilitytimer2=30..}] at @s facing entity @p feet run tp @s ^ ^ ^0.2
execute as @e[tag=arrowfall,scores={abilitytimer2=140..}] at @s run kill @s

execute as @e[tag=arrowrain] at @s run effect give @e[type=skeleton,distance=..4] resistance 1 5
execute as @e[tag=boltofruin] at @s run effect give @e[type=skeleton,distance=..6] resistance 1 5
execute as @e[tag=barragearrow] at @s run effect give @e[type=skeleton,distance=..4] resistance 1 5
execute as @e[tag=spreadarrow] at @s run effect give @e[type=skeleton,distance=..4] resistance 1 5
kill @e[tag=arrowrain,nbt={inGround:1b}]

execute as @e[tag=barragearrow,tag=!arrowunleashed] at @s run tp @s ~ ~ ~
execute as @e[tag=barragearrow] at @s run particle firework ~ ~ ~ 0 0 0 0.03 10 normal @a
execute as @e[tag=barragearrow] at @s unless entity @e[tag=skeletonboss,distance=..50] run kill @s
execute as @e[tag=barragearrow] at @s run scoreboard players add @s abilitytimer2 1
kill @e[tag=barragearrow,scores={abilitytimer2=160..}]
kill @e[tag=barragearrow,nbt={inGround:1b}]

execute as @e[tag=ruinspikes] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=ruinspikes] at @s run scoreboard players add @s abilitytimer3 1
execute as @e[tag=ruinspikes] at @s run playsound block.rooted_dirt.break master @a ~ ~-1 ~ 0.4 2
execute as @e[tag=ruinspikes] at @s run particle block dirt ~ ~ ~ 1 0 1 0 10 normal @a
execute as @e[tag=ruinspikes] at @s run particle dust 0.506 0.416 0.345 3 ~ ~ ~ 1 0 1 0 10 normal @a
execute as @e[tag=ruinspikes,scores={abilitytimer2=..20}] at @s facing entity @p feet rotated ~ 0 run tp ^ ^ ^0.5
execute as @e[tag=ruinspikes,scores={abilitytimer2=21..}] at @s rotated ~ 0 run tp ^ ^ ^0.8
execute as @e[tag=ruinspikes,scores={abilitytimer3=2..}] at @s run summon armor_stand ~ ~ ~ {Tags:["spike"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=ruinspikes,scores={abilitytimer3=2..}] at @s run scoreboard players set @s abilitytimer3 0
execute as @e[tag=ruinspikes] at @s if entity @p[distance=..2] run scoreboard players add @s abilitytimer2 1
execute as @e[tag=ruinspikes,scores={abilitytimer2=40..}] at @s run kill @s
execute as @e[tag=spike] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=spike,scores={abilitytimer2=1}] at @s run playsound entity.wither.break_block master @a ~ ~ ~ 0.5 2
execute as @e[tag=spike,scores={abilitytimer2=1}] at @s unless block ~ ~-1 ~ air run fill ~ ~0.5 ~ ~ ~0.5 ~ pointed_dripstone replace air
execute as @e[tag=spike,scores={abilitytimer2=1}] at @s unless block ~ ~-1 ~ air run effect give @a[limit=1,distance=..2] instant_damage 1 0
execute as @e[tag=spike,scores={abilitytimer2=10}] at @s unless block ~ ~-1 ~ air run fill ~ ~0.5 ~ ~ ~1.5 ~ pointed_dripstone replace air
execute as @e[tag=spike,scores={abilitytimer2=10}] at @s unless block ~ ~-1 ~ air run effect give @a[limit=1,distance=..2] instant_damage 1 0
execute as @e[tag=spike,scores={abilitytimer2=20}] at @s unless block ~ ~-1 ~ air run fill ~ ~0.5 ~ ~ ~2.5 ~ pointed_dripstone replace air
execute as @e[tag=spike,scores={abilitytimer2=20}] at @s unless block ~ ~-1 ~ air run effect give @a[limit=1,distance=..2] instant_damage 1 0
execute as @e[tag=spike,scores={abilitytimer2=40}] at @s run fill ~ ~0.5 ~ ~ ~2.5 ~ air replace pointed_dripstone
execute as @e[tag=spike,scores={abilitytimer2=40}] at @s run kill @s

execute as @e[tag=soulsmite] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=soulsmite,scores={abilitytimer2=200..}] run kill
execute as @e[tag=soulsmite] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute as @e[tag=soulsmite] at @s run particle dust 0.11 0.718 0.824 2 ~ ~ ~ 0 1 0 0 10 normal @a
execute as @e[tag=soulsmite] at @s run particle dust 0.035 0.431 0.71 1 ~ ~ ~ 0 2 0 0 15 normal @a
execute as @e[tag=soulsmite] at @s run particle soul ~ ~5 ~ 0 0 0 0.05 3 normal @a
execute as @e[tag=soulsmite] at @s unless block ~ ~-1 ~ air run scoreboard players set @s abilitytimer2 0
execute as @e[tag=soulsmite] at @s unless block ~ ~-1 ~ air run scoreboard players add @s abilitytimer3 1
execute as @e[tag=soulsmite,scores={abilitytimer3=1}] at @s run playsound block.anvil.land master @a ~ ~ ~ 10 0.5
execute as @e[tag=soulsmite,scores={abilitytimer3=20}] at @s run playsound entity.ender_dragon.growl master @a ~ ~ ~ 3 2
execute as @e[tag=soulsmite,scores={abilitytimer3=20}] at @s run particle dust_color_transition 0.11 0.718 0.824 2 0.035 0.431 0.71 ~ ~0.1 ~ 5 0 5 0.2 300 normal @a
execute as @e[tag=soulsmite,scores={abilitytimer3=20}] at @s run particle large_smoke ~ ~ ~ 5 0 5 0 500 normal @a
execute as @e[tag=soulsmite,scores={abilitytimer3=30}] at @s run playsound entity.ender_dragon.growl master @a ~ ~ ~ 3 2
execute as @e[tag=soulsmite,scores={abilitytimer3=30}] at @s run particle dust_color_transition 0.11 0.718 0.824 2 0.035 0.431 0.71 ~ ~0.1 ~ 5 0 5 0.2 300 normal @a
execute as @e[tag=soulsmite,scores={abilitytimer3=30}] at @s run particle large_smoke ~ ~ ~ 5 0 5 0 500 normal @a
execute as @e[tag=soulsmite,scores={abilitytimer3=40}] at @s run playsound entity.ender_dragon.growl master @a ~ ~ ~ 3 2
execute as @e[tag=soulsmite,scores={abilitytimer3=40}] at @s run particle dust_color_transition 0.11 0.718 0.824 2 0.035 0.431 0.71 ~ ~0.1 ~ 5 0 5 0.2 300 normal @a
execute as @e[tag=soulsmite,scores={abilitytimer3=40}] at @s run particle large_smoke ~ ~ ~ 5 0 5 0 500 normal @a
execute as @e[tag=soulsmite,scores={abilitytimer3=50}] at @s run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 10 1
execute as @e[tag=soulsmite,scores={abilitytimer3=50}] at @s run playsound entity.generic.explode master @a ~ ~ ~ 10 1
execute as @e[tag=soulsmite,scores={abilitytimer3=50}] at @s run particle dust_color_transition 0.11 0.718 0.824 5 0.035 0.431 0.71 ~ ~ ~ 5 5 5 0.5 1000 normal @a
execute as @e[tag=soulsmite,scores={abilitytimer3=50}] at @s run particle soul_fire_flame ~ ~ ~ 3 3 3 0.5 500 normal @a
execute as @e[tag=soulsmite,scores={abilitytimer3=50}] at @s run particle soul ~ ~ ~ 5 5 5 0.5 500 normal @a
execute as @e[tag=soulsmite,scores={abilitytimer3=50}] at @s run particle explosion ~ ~ ~ 5 5 5 0 50 normal @a
execute as @e[tag=soulsmite,scores={abilitytimer3=50}] at @s run effect give @a[distance=..10] instant_damage 1 2
execute as @e[tag=soulsmite,scores={abilitytimer3=50}] at @s run effect give @a[distance=..10] weakness 20 2
execute as @e[tag=soulsmite,scores={abilitytimer3=50}] at @s run kill @s

#add ultimate - invoke ruination: descending misery
#the boss pulls 4 monoliths of ruination from the ground before throwing them at the players nearest to each of them
#has 4 seconds delay between each throw
#upon touching the ground, monoliths start shortening from their tail end and exploding at the tip as if they are going into the ground

execute as @e[tag=skeletonboss,scores={abilitytimer5=1100..1450}] run scoreboard players set @s bossabilitytimer -100
execute as @e[tag=skeletonboss,scores={abilitytimer5=1100..1450}] run scoreboard players set @s abilitytimer2 -100
execute as @e[tag=skeletonboss,scores={abilitytimer5=1100..1450}] run scoreboard players set @s abilitytimer3 -100
execute as @e[tag=skeletonboss,scores={abilitytimer5=1100..1450}] run scoreboard players set @s abilitytimer4 -100
execute as @e[tag=skeletonboss,scores={abilitytimer5=1100..1200}] at @s run particle angry_villager ~ ~ ~ 2 2 2 0.3 20 normal @a
execute as @e[tag=skeletonboss,scores={abilitytimer5=1100..1200}] at @s anchored feet run particle large_smoke ~ ~ ~ 0.9 0.9 0.9 0.3 5 normal @a
execute as @e[tag=skeletonboss,scores={abilitytimer5=1100}] at @s run playsound entity.ender_dragon.growl master @a ~ ~ ~ 20 2
execute as @e[tag=skeletonboss,scores={abilitytimer5=1100}] at @s run tellraw @a [{"text":"Ruin Spectre is about to use ","color":"gray","bold":false,"italic":false},{"text":"Invoke Ruination: Descending Misery!","color":"white","bold":true,"italic":false}]
execute as @e[tag=skeletonboss,scores={abilitytimer5=1250..1450}] at @s run effect give @s resistance 1 5
execute as @e[tag=skeletonboss,scores={abilitytimer5=1250}] at @s run playsound block.end_portal.spawn master @a ~ ~ ~ 20 0.5
execute as @e[tag=skeletonboss,scores={abilitytimer5=1100}] at @s run summon armor_stand ~15 ~-5 ~15 {Tags:["monolith1","monolith"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=skeletonboss,scores={abilitytimer5=1100}] at @s run summon armor_stand ~15 ~-5 ~-15 {Tags:["monolith2","monolith"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=skeletonboss,scores={abilitytimer5=1100}] at @s run summon armor_stand ~-15 ~-5 ~15 {Tags:["monolith3","monolith"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=skeletonboss,scores={abilitytimer5=1100}] at @s run summon armor_stand ~-15 ~-5 ~-15 {Tags:["monolith4","monolith"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=skeletonboss,scores={abilitytimer5=1100}] at @s run execute as @e[tag=monolith,limit=4,sort=nearest] at @s run tp @s ~ ~ ~ ~ ~90
execute as @e[tag=skeletonboss,scores={abilitytimer5=1100..1200}] at @s run tp @s ~ ~0.05 ~
execute as @e[tag=skeletonboss,scores={abilitytimer5=1200..1450}] at @s run tp @s ~ ~ ~
execute as @e[tag=skeletonboss,scores={abilitytimer5=1600}] at @s run scoreboard players set @s abilitytimer5 0

execute as @e[tag=monolith] run scoreboard players add @s abilitytimer2 1
execute as @e[tag=monolith,scores={abilitytimer2=0..100}] at @s run tp @s ~ ~0.25 ~
execute as @e[tag=monolith,scores={abilitytimer2=0..100}] at @s run playsound item.totem.use master @a ~ ~ ~ 0.5 0.5
execute as @e[tag=monolith,tag=monolith1,scores={abilitytimer2=150}] at @s run scoreboard players set @s attackstate 1
execute as @e[tag=monolith,tag=monolith2,scores={abilitytimer2=200}] at @s run scoreboard players set @s attackstate 1
execute as @e[tag=monolith,tag=monolith3,scores={abilitytimer2=250}] at @s run scoreboard players set @s attackstate 1
execute as @e[tag=monolith,tag=monolith4,scores={abilitytimer2=300}] at @s run scoreboard players set @s attackstate 1
execute as @e[tag=monolith,scores={attackstate=1}] run scoreboard players add @s abilitytimer3 1
execute as @e[tag=monolith,scores={attackstate=1,abilitytimer3=1}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=monolith,scores={attackstate=1}] at @s run tp @s ^ ^ ^1.3
execute as @e[tag=monolith,scores={attackstate=1}] at @s unless block ^ ^ ^7 air run scoreboard players set @s attackstate 2
execute as @e[tag=monolith,scores={attackstate=2}] at @s run scoreboard players add @s abilitytimer4 1
execute as @e[tag=monolith,scores={attackstate=1..2}] at @s run particle large_smoke ^ ^ ^6 1 1 1 0.5 10 normal @a
execute as @e[tag=monolith,scores={attackstate=2}] at @s run effect give @e[type=!player,distance=..8] resistance 1 5
execute as @e[tag=monolith,scores={attackstate=2,abilitytimer4=1}] at @s run summon creeper ^ ^ ^6 {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:6b,Fuse:0,ignited:1b,CustomName:'{"text":"Monolith of Ruination","color":"gray","bold":true}'}
execute as @e[tag=monolith,scores={attackstate=2,abilitytimer4=12}] at @s run summon creeper ^ ^ ^6 {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:5b,Fuse:0,ignited:1b,CustomName:'{"text":"Monolith of Ruination","color":"gray","bold":true}'}
execute as @e[tag=monolith,scores={attackstate=2,abilitytimer4=23}] at @s run summon creeper ^ ^ ^6 {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:4b,Fuse:0,ignited:1b,CustomName:'{"text":"Monolith of Ruination","color":"gray","bold":true}'}
execute as @e[tag=monolith,scores={attackstate=2,abilitytimer4=34}] at @s run summon creeper ^ ^ ^6 {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:4b,Fuse:0,ignited:1b,CustomName:'{"text":"Monolith of Ruination","color":"gray","bold":true}'}
execute as @e[tag=monolith,scores={attackstate=2,abilitytimer4=45}] at @s run summon creeper ^ ^ ^6 {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:4b,Fuse:0,ignited:1b,CustomName:'{"text":"Monolith of Ruination","color":"gray","bold":true}'}
execute as @e[tag=monolith] at @s run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 air replace bone_block
execute as @e[tag=monolith] at @s unless score @s abilitytimer4 matches 5.. positioned ^ ^ ^-8 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 bone_block replace air
execute as @e[tag=monolith] at @s unless score @s abilitytimer4 matches 10.. positioned ^ ^ ^-6 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 bone_block replace air
execute as @e[tag=monolith] at @s unless score @s abilitytimer4 matches 15.. positioned ^ ^ ^-4 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 bone_block replace air
execute as @e[tag=monolith] at @s unless score @s abilitytimer4 matches 20.. positioned ^ ^ ^-2 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 bone_block replace air
execute as @e[tag=monolith] at @s unless score @s abilitytimer4 matches 25.. positioned ^ ^ ^ run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 bone_block replace air
execute as @e[tag=monolith] at @s unless score @s abilitytimer4 matches 30.. positioned ^ ^ ^1 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 bone_block replace air
execute as @e[tag=monolith] at @s unless score @s abilitytimer4 matches 35.. positioned ^ ^ ^2 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 bone_block replace air
execute as @e[tag=monolith] at @s unless score @s abilitytimer4 matches 40.. positioned ^ ^ ^3 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 bone_block replace air
execute as @e[tag=monolith] at @s unless score @s abilitytimer4 matches 45.. positioned ^ ^ ^4 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 bone_block replace air
execute as @e[tag=monolith,scores={attackstate=1}] at @s run particle dust 0.6 0.6 0.6 2 ^ ^ ^-4 2 2 2 0.1 3 normal @a
execute as @e[tag=monolith,scores={attackstate=1}] at @s run particle dust 0.6 0.6 0.6 2 ^ ^ ^-3 2 2 2 0.1 3 normal @a
execute as @e[tag=monolith,scores={attackstate=1}] at @s run particle dust 0.6 0.6 0.6 2 ^ ^ ^-2 2 2 2 0.1 3 normal @a
execute as @e[tag=monolith,scores={attackstate=1}] at @s run particle dust 0.6 0.6 0.6 2 ^ ^ ^-1 2 2 2 0.1 3 normal @a
execute as @e[tag=monolith,scores={attackstate=1}] at @s run particle dust 0.6 0.6 0.6 2 ^ ^ ^ 2 2 2 0.1 3 normal @a
execute as @e[tag=monolith,scores={attackstate=1}] at @s run particle dust 0.6 0.6 0.6 2 ^ ^ ^1 2 2 2 0.1 3 normal @a
execute as @e[tag=monolith,scores={attackstate=1}] at @s run particle dust 0.6 0.6 0.6 2 ^ ^ ^2 2 2 2 0.1 3 normal @a
execute as @e[tag=monolith,scores={attackstate=1}] at @s run particle dust 0.6 0.6 0.6 2 ^ ^ ^3 2 2 2 0.1 3 normal @a
execute as @e[tag=monolith,scores={attackstate=1}] at @s run particle dust 0.6 0.6 0.6 2 ^ ^ ^4 2 2 2 0.1 3 normal @a
execute as @e[tag=monolith,scores={attackstate=1}] at @s run particle dust 0.9 0.9 0.9 2 ^ ^ ^5 2 2 2 0.6 10 normal @a
execute as @e[tag=monolith,scores={attackstate=1,abilitytimer3=200..}] at @s run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 air replace bone_block
execute as @e[tag=monolith,scores={attackstate=1,abilitytimer3=200..}] run kill @s
execute as @e[tag=monolith,scores={attackstate=2,abilitytimer4=45..}] at @s run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 air replace bone_block
execute as @e[tag=monolith,scores={attackstate=2,abilitytimer4=45..}] at @s run kill @s

execute as @e[tag=skeletonboss] at @s run data modify entity @s StrayConversionTime set value 100