execute as @a[scores={tpboss5=1..}] at @s unless entity @e[tag=drownedboss] run tellraw @s "Boss no longer exists! D:"
execute as @a[scores={tpboss5=1..}] at @s if entity @e[tag=drownedboss] run tp @s @e[tag=drownedboss,limit=1,sort=nearest]
execute as @a[scores={tpboss5=1..}] run scoreboard players set @s tpboss5 0
scoreboard players enable @a tpboss5

execute as @e[tag=drownedboss] store result score @s hp run data get entity @s Health

execute as @e[tag=drownedboss,scores={hp=40..}] unless score @s attackstate matches 1..3 run scoreboard players set @s attackstate 1
execute as @e[tag=drownedboss,scores={bossabilitytimer=0,hp=40..}] run scoreboard players set @s attackstate 1
execute as @e[tag=drownedboss,scores={bossabilitytimer=0,hp=40..}] if predicate hm:50percent if entity @p[distance=5..] run scoreboard players set @s attackstate 3
execute as @e[tag=drownedboss,scores={hp=..40}] run scoreboard players set @s attackstate 2

execute as @e[tag=drownedboss] at @s if entity @p[distance=..50] run scoreboard players add @s bossabilitytimer 1
execute as @e[tag=drownedboss] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=drownedboss] at @s run scoreboard players add @s abilitytimer3 1

execute as @e[tag=drownedboss,scores={bossabilitytimer=20..29,attackstate=1..2}] at @s positioned ~ ~1 ~ run particle bubble ~ ~ ~ 0 0 0 1 10 normal @a
execute as @e[tag=drownedboss,scores={bossabilitytimer=29,attackstate=1..2}] at @s run summon trident ~ ~1 ~ {Tags:["bosstrident"],CustomNameVisible:0b,damage:10,crit:1b,Motion:[1.0,0.0,1.0]}
execute as @e[tag=drownedboss,scores={bossabilitytimer=29,attackstate=1..2}] at @s run summon trident ~ ~1 ~ {Tags:["bosstrident"],CustomNameVisible:0b,damage:10,crit:1b,Motion:[-1.0,0.0,-1.0]}
execute as @e[tag=drownedboss,scores={bossabilitytimer=29,attackstate=1..2}] at @s run summon trident ~ ~1 ~ {Tags:["bosstrident"],CustomNameVisible:0b,damage:10,crit:1b,Motion:[1.0,0.0,-1.0]}
execute as @e[tag=drownedboss,scores={bossabilitytimer=29,attackstate=1..2}] at @s run summon trident ~ ~1 ~ {Tags:["bosstrident"],CustomNameVisible:0b,damage:10,crit:1b,Motion:[-1.0,0.0,1.0]}
execute as @e[tag=drownedboss,scores={bossabilitytimer=29,attackstate=1..2}] at @s run summon trident ~ ~1 ~ {Tags:["bosstrident"],CustomNameVisible:0b,damage:10,crit:1b,Motion:[1.4,0.0,0.0]}
execute as @e[tag=drownedboss,scores={bossabilitytimer=29,attackstate=1..2}] at @s run summon trident ~ ~1 ~ {Tags:["bosstrident"],CustomNameVisible:0b,damage:10,crit:1b,Motion:[-1.4,0.0,0.0]}
execute as @e[tag=drownedboss,scores={bossabilitytimer=29,attackstate=1..2}] at @s run summon trident ~ ~1 ~ {Tags:["bosstrident"],CustomNameVisible:0b,damage:10,crit:1b,Motion:[0.0,0.0,1.4]}
execute as @e[tag=drownedboss,scores={bossabilitytimer=29,attackstate=1..2}] at @s run summon trident ~ ~1 ~ {Tags:["bosstrident"],CustomNameVisible:0b,damage:10,crit:1b,Motion:[0.0,0.0,-1.4]}
execute as @e[tag=drownedboss,scores={bossabilitytimer=30..39,attackstate=2}] at @s positioned ~ ~1 ~ run particle bubble ~ ~ ~ 0 0 0 1 10 normal @a
execute as @e[tag=drownedboss,scores={bossabilitytimer=39,attackstate=2}] at @s run summon trident ~ ~1 ~ {Tags:["bosstrident"],CustomNameVisible:0b,damage:15,crit:1b,Motion:[1.0,0.0,1.0]}
execute as @e[tag=drownedboss,scores={bossabilitytimer=39,attackstate=2}] at @s run summon trident ~ ~1 ~ {Tags:["bosstrident"],CustomNameVisible:0b,damage:15,crit:1b,Motion:[-1.0,0.0,-1.0]}
execute as @e[tag=drownedboss,scores={bossabilitytimer=39,attackstate=2}] at @s run summon trident ~ ~1 ~ {Tags:["bosstrident"],CustomNameVisible:0b,damage:15,crit:1b,Motion:[1.0,0.0,-1.0]}
execute as @e[tag=drownedboss,scores={bossabilitytimer=39,attackstate=2}] at @s run summon trident ~ ~1 ~ {Tags:["bosstrident"],CustomNameVisible:0b,damage:15,crit:1b,Motion:[-1.0,0.0,1.0]}
execute as @e[tag=drownedboss,scores={bossabilitytimer=39,attackstate=2}] at @s run summon trident ~ ~1 ~ {Tags:["bosstrident"],CustomNameVisible:0b,damage:15,crit:1b,Motion:[1.4,0.0,0.0]}
execute as @e[tag=drownedboss,scores={bossabilitytimer=39,attackstate=2}] at @s run summon trident ~ ~1 ~ {Tags:["bosstrident"],CustomNameVisible:0b,damage:15,crit:1b,Motion:[-1.4,0.0,0.0]}
execute as @e[tag=drownedboss,scores={bossabilitytimer=39,attackstate=2}] at @s run summon trident ~ ~1 ~ {Tags:["bosstrident"],CustomNameVisible:0b,damage:15,crit:1b,Motion:[0.0,0.0,1.4]}
execute as @e[tag=drownedboss,scores={bossabilitytimer=39,attackstate=2}] at @s run summon trident ~ ~1 ~ {Tags:["bosstrident"],CustomNameVisible:0b,damage:15,crit:1b,Motion:[0.0,0.0,-1.4]}

execute as @e[tag=drownedboss] run data modify entity @s DrownedConversionTime set value 9999

execute as @e[tag=drownedboss,scores={bossabilitytimer=0..9,attackstate=2}] at @s positioned ~ ~0.5 ~ if entity @p[distance=5..] run particle bubble ~ ~ ~ 1 1 1 0 10 normal @a
execute as @e[tag=drownedboss,scores={bossabilitytimer=9,attackstate=2}] at @s if entity @p[distance=5..] run summon armor_stand ~ ~ ~ {Tags:["waterspell"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:sea_lantern",Count:1b}]}
execute as @e[tag=drownedboss,scores={bossabilitytimer=9,attackstate=2}] at @s if entity @p[distance=5..] run execute as @e[tag=waterspell,limit=1,sort=nearest] at @s run tp @s ^ ^1 ^0.1 facing entity @p feet
execute as @e[tag=drownedboss,scores={bossabilitytimer=50..59,attackstate=2..3}] at @s positioned ~ ~0.5 ~ run particle bubble ~ ~ ~ 0 0 0 1 10 normal @a
execute as @e[tag=drownedboss,scores={bossabilitytimer=59,attackstate=2..3}] at @s run summon armor_stand ~ ~ ~ {Tags:["waterspell"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:prismarine",Count:1b}]}
execute as @e[tag=drownedboss,scores={bossabilitytimer=59,attackstate=2..3}] at @s run execute as @e[tag=waterspell,limit=1,sort=nearest] at @s run tp @s ^ ^1 ^0.1 facing entity @p feet
execute as @e[tag=drownedboss,scores={bossabilitytimer=60..}] run scoreboard players set @s bossabilitytimer 0

execute as @e[tag=drownedboss,scores={abilitytimer2=190..210}] at @s if block ~ ~2 ~ water run tp @s ~ ~1.25 ~ facing entity @p
execute as @e[tag=drownedboss,scores={abilitytimer2=190..210}] at @s if block ~ ~2 ~ air run tp @s ~ ~0.75 ~ facing entity @p
execute as @e[tag=drownedboss,scores={abilitytimer2=211..230}] at @s if block ^ ^-1 ^1 air run tp @s ^ ^-1 ^1 facing entity @p
execute as @e[tag=drownedboss,scores={abilitytimer2=211..230}] at @s if block ^ ^1 ^1 water run tp @s ^ ^-0.5 ^1 facing entity @p
execute as @e[tag=drownedboss,scores={abilitytimer2=230,attackstate=2}] at @s run effect give @e[type=!player,distance=..5] resistance 1 10
execute as @e[tag=drownedboss,scores={abilitytimer2=230,attackstate=2}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:2b,Fuse:0,ignited:1b,CustomName:'{"text":"Riptide Fury","color":"dark_blue","bold":true}'}
execute as @e[tag=drownedboss,scores={abilitytimer2=230,attackstate=2}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 water replace air
execute as @e[tag=drownedboss,scores={abilitytimer2=190..210}] at @s run particle bubble_column_up ~ ~ ~ 0 0 0 0.1 10 normal @a
execute as @e[tag=drownedboss,scores={abilitytimer2=211..230}] at @s run particle rain ~ ~ ~ 0 0 0 0.1 10 normal @a
execute as @e[tag=drownedboss,scores={abilitytimer2=190..230}] at @s run playsound item.trident.riptide_2 master @a ~ ~ ~ 0.2 1 0
execute as @e[tag=drownedboss,scores={abilitytimer2=20,attackstate=2}] at @s if predicate hm:50percent run summon drowned ~ ~ ~ {Tags:["bosschecked"]}
execute as @e[tag=drownedboss,scores={abilitytimer2=230..}] at @s run scoreboard players set @s abilitytimer2 0

execute as @e[tag=drownedboss] at @s run effect give @e[type=drowned,distance=..30] dolphins_grace 1 5
execute as @e[tag=drownedboss,scores={abilitytimer3=160..}] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 10 normal
execute as @e[tag=drownedboss,scores={abilitytimer3=160..}] at @s if block ^ ^1 ^1 air run tp @s ^ ^ ^0.5 facing entity @p
execute as @e[tag=drownedboss,scores={abilitytimer3=160..}] at @s if block ^ ^1 ^1 water run tp @s ^ ^ ^1 facing entity @p
execute as @e[tag=drownedboss,scores={abilitytimer3=70..90,attackstate=2}] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 10 normal
execute as @e[tag=drownedboss,scores={abilitytimer3=70..90,attackstate=2}] at @s if block ^ ^1 ^1 air run tp @s ^ ^ ^0.5 facing entity @p
execute as @e[tag=drownedboss,scores={abilitytimer3=70..90,attackstate=2}] at @s if block ^ ^1 ^1 water run tp @s ^ ^ ^1 facing entity @p
execute as @e[tag=drownedboss,scores={abilitytimer3=180..}] at @s run scoreboard players set @s abilitytimer3 0

execute as @e[tag=drownedboss] at @s if block ^ ^ ^1 water run tp @s ^ ^ ^0.2 facing entity @p
execute as @e[tag=drownedboss] at @s if block ^ ^ ^1 water run effect give @a[distance=..30] dolphins_grace 5 0
kill @e[tag=bosstrident,nbt={inGround:1b}]