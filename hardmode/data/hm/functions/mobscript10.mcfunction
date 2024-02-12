execute as @a[scores={tpboss6=1..}] at @s unless entity @e[tag=strayboss] run tellraw @s "Boss no longer exists! D:"
execute as @a[scores={tpboss6=1..}] at @s if entity @e[tag=strayboss] run tp @s @e[tag=strayboss,limit=1,sort=nearest]
execute as @a[scores={tpboss6=1..}] run scoreboard players set @s tpboss6 0
scoreboard players enable @a tpboss6

execute as @e[tag=strayboss] at @s if entity @p[distance=..50] run scoreboard players add @s bossabilitytimer 1
execute as @e[tag=strayboss] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=strayboss] at @s run scoreboard players add @s abilitytimer3 1
execute as @e[tag=strayboss] at @s run scoreboard players add @s abilitytimer4 1
execute as @e[tag=strayboss,scores={bossabilitytimer=70..}] at @s positioned ~ ~0.5 ~ run particle block ice ~ ~ ~ 0 0 0 1 10 normal @a
execute as @e[tag=strayboss,scores={bossabilitytimer=89}] at @s run playsound entity.skeleton.shoot master @a ~ ~ ~ 1 0.5
execute as @e[tag=strayboss,scores={bossabilitytimer=89}] at @s run summon armor_stand ~ ~ ~ {Tags:["blizzardarrow"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=strayboss,scores={bossabilitytimer=89}] at @s run summon armor_stand ~ ~ ~ {Tags:["blizzardarrow"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=strayboss,scores={bossabilitytimer=89}] at @s run summon armor_stand ~ ~ ~ {Tags:["blizzardarrow"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=strayboss,scores={bossabilitytimer=89}] at @s run execute as @e[tag=blizzardarrow,limit=3,sort=nearest] at @s run tp @s ^ ^1 ^0.1 facing entity @p eyes
execute as @e[tag=strayboss,scores={bossabilitytimer=89}] at @s run execute as @e[tag=blizzardarrow,limit=2,sort=nearest] at @s run tp @s ~ ~ ~ ~13 ~
execute as @e[tag=strayboss,scores={bossabilitytimer=89}] at @s run execute as @e[tag=blizzardarrow,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~-26 ~
execute as @e[tag=strayboss,scores={bossabilitytimer=90..}] run scoreboard players set @s bossabilitytimer 0

execute as @e[tag=strayboss,scores={abilitytimer2=500..}] at @s run summon stray ~ ~1 ~ {Tags:["bosschecked"]}
execute as @e[tag=strayboss,scores={abilitytimer2=500..}] at @s run particle snowflake ~ ~ ~ 1 1 1 0 150 normal @a
execute as @e[tag=strayboss,scores={abilitytimer2=500..}] at @s run playsound entity.evoker.cast_spell master @a ~ ~ ~ 1 0.5 0
execute as @e[tag=strayboss,scores={abilitytimer2=500..}] at @s run scoreboard players set @s abilitytimer2 0

execute as @e[tag=strayboss] at @s run data modify entity @s FallDistance set value 0
execute as @e[tag=strayboss] at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace fire
execute as @e[tag=strayboss,scores={abilitytimer3=120..}] at @s run particle snowflake ~ ~ ~ 0 0 0 0.1 10 normal
execute as @e[tag=strayboss,scores={abilitytimer3=30..50}] at @s facing entity @p[distance=..40] eyes rotated ~ 0 if block ^ ^1 ^1 air run tp @s ^ ^0.2 ^1
execute as @e[tag=strayboss,scores={abilitytimer3=30..50}] at @s facing entity @p[distance=..40] eyes rotated ~ 0 if block ^ ^1 ^1 water run tp @s ^ ^0.3 ^1
execute as @e[tag=strayboss,scores={abilitytimer3=120..140}] at @s if entity @p[distance=..40] facing entity @p[distance=..40] eyes rotated ~ 0 if block ^ ^2 ^-1 air run tp @s ^ ^0.4 ^-1
execute as @e[tag=strayboss,scores={abilitytimer3=120..140}] at @s if entity @p[distance=..40] facing entity @p[distance=..40] eyes rotated ~ 0 if block ^ ^2 ^-1 water run tp @s ^ ^0.2 ^-1
execute as @e[tag=strayboss,scores={abilitytimer3=140}] at @s run playsound entity.drowned.shoot master @a ~ ~ ~ 1 0.5
execute as @e[tag=strayboss,scores={abilitytimer3=140}] at @s run summon armor_stand ~ ~ ~ {Tags:["snowbolt"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=strayboss,scores={abilitytimer3=140}] at @s run execute as @e[tag=snowbolt,limit=1,sort=nearest] at @s run tp @s ^ ^1 ^0.1 facing entity @p eyes
execute as @e[tag=strayboss,scores={abilitytimer3=120..140}] at @s run effect give @s resistance 1 5
execute as @e[tag=strayboss,scores={abilitytimer3=140..}] at @s run scoreboard players set @s abilitytimer3 0

execute as @e[tag=strayboss] store result score @s hp run data get entity @s Health
execute as @e[tag=strayboss,scores={abilitytimer4=400,hp=..50}] at @s run particle snowflake ~ ~ ~ 5 1 5 0 250 normal @a
execute as @e[tag=strayboss,scores={abilitytimer4=400,hp=..50}] at @s run fill ~-10 ~-2 ~-10 ~10 ~2 ~10 packed_ice replace #mineable/pickaxe
execute as @e[tag=strayboss,scores={abilitytimer4=400,hp=..50}] at @s run fill ~-10 ~-2 ~-10 ~10 ~2 ~10 packed_ice replace #mineable/shovel
execute as @e[tag=strayboss,scores={abilitytimer4=400,hp=..50}] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ lava unless block ~ ~-1 ~ water run fill ~-7 ~ ~-7 ~7 ~ ~7 snow replace air
execute as @e[tag=strayboss,scores={abilitytimer4=400,hp=..50}] at @s run execute as @a[distance=..8] at @s run fill ~-1 ~ ~-1 ~1 ~2 ~1 blue_ice
execute as @e[tag=strayboss,scores={abilitytimer4=400,hp=..50}] at @s run effect give @a[distance=..8] instant_damage 1 1
execute as @e[tag=strayboss,scores={abilitytimer4=300..,hp=..50}] at @s run particle soul_fire_flame ~ ~ ~ 0 0 0 0.2 15 normal @a
execute as @e[tag=strayboss,scores={hp=..50}] at @s run particle spit ~ ~4 ~ 10 3 10 0 10 normal @a
execute as @e[tag=strayboss,scores={abilitytimer4=400,hp=..50}] at @s run playsound entity.zombie_villager.cure master @a ~ ~ ~ 10 0.5 0
execute as @e[tag=strayboss,scores={abilitytimer4=400..}] at @s run scoreboard players set @s abilitytimer4 0

execute as @e[tag=strayboss] at @s if block ~ ~2 ~ #mineable/pickaxe run fill ~-1 ~ ~-1 ~1 ~3 ~1 water replace #mineable/pickaxe