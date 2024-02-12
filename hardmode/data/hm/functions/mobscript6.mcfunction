execute as @a[scores={tpboss4=1..}] at @s unless entity @e[tag=huskboss] run tellraw @s "Boss no longer exists! D:"
execute as @a[scores={tpboss4=1..}] at @s if entity @e[tag=huskboss] run tp @s @e[tag=huskboss,limit=1,sort=nearest]
execute as @a[scores={tpboss4=1..}] run scoreboard players set @s tpboss4 0
scoreboard players enable @a tpboss4

execute as @e[tag=huskboss] at @s if entity @p[distance=..50] run scoreboard players add @s bossabilitytimer 1
execute as @e[tag=huskboss] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=huskboss] at @s run scoreboard players add @s abilitytimer3 1
execute as @e[tag=huskboss,scores={bossabilitytimer=70..}] at @s positioned ~ ~0.5 ~ run particle smoke ~ ~ ~ 0 0 0 1 10 normal @a
execute as @e[tag=huskboss,scores={bossabilitytimer=89}] at @s run summon armor_stand ~ ~ ~ {Tags:["sandspell"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[tag=huskboss,scores={bossabilitytimer=89}] at @s run execute as @e[tag=sandspell,limit=1,sort=nearest] at @s run tp @s ^ ^1 ^0.1 facing entity @p eyes
execute as @e[tag=huskboss,scores={bossabilitytimer=90..}] run scoreboard players set @s bossabilitytimer 0
execute as @e[tag=huskboss] run data modify entity @s DrownedConversionTime set value 9999

execute as @e[tag=huskboss,scores={abilitytimer2=500..}] at @s run summon husk ~ ~1 ~ {Tags:["bosschecked"]}
execute as @e[tag=huskboss,scores={abilitytimer2=500..}] at @s run particle large_smoke ~ ~ ~ 1 1 1 0 150 normal @a
execute as @e[tag=huskboss,scores={abilitytimer2=500..}] at @s run playsound entity.evoker.cast_spell master @a ~ ~ ~ 1 0.5 0
execute as @e[tag=huskboss,scores={abilitytimer2=500..}] at @s run scoreboard players set @s abilitytimer2 0

execute as @e[tag=huskboss] at @s run effect give @e[type=husk,distance=..30] fire_resistance 1 0
execute as @e[tag=huskboss,scores={abilitytimer3=160..}] at @s run particle flame ~ ~ ~ 0 0 0 0.1 10 normal
execute as @e[tag=huskboss,scores={abilitytimer3=160..}] at @s run fill ~ ~ ~ ~ ~ ~ fire replace air
execute as @e[tag=huskboss,scores={abilitytimer3=160..}] at @s if block ^ ^1 ^1 air run tp @s ^ ^ ^0.5 facing entity @p
execute as @e[tag=huskboss,scores={abilitytimer3=160..}] at @s if block ^ ^1 ^1 water run tp @s ^ ^0.3 ^1 facing entity @p
execute as @e[tag=huskboss,scores={abilitytimer3=160..}] at @s if block ^ ^1 ^1 lava run tp @s ^ ^1 ^1 facing entity @p
execute as @e[tag=huskboss,scores={abilitytimer3=160..}] at @s run effect give @s resistance 1 5
execute as @e[tag=huskboss,scores={abilitytimer3=180..}] at @s run scoreboard players set @s abilitytimer3 0