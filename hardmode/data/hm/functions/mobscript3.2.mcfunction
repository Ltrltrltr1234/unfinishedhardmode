execute if score @s abilitytimer2 matches 50 run summon armor_stand ~ ~ ~ {Tags:["flashbolt"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s abilitytimer2 matches 50 run execute as @e[tag=flashbolt,limit=1,sort=nearest] at @s run tp @s ^ ^1 ^0.1 facing entity @p eyes
execute if score @s abilitytimer2 matches 70 run summon armor_stand ~ ~ ~ {Tags:["flashbolt"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s abilitytimer2 matches 70 run execute as @e[tag=flashbolt,limit=1,sort=nearest] at @s run tp @s ^ ^1 ^0.1 facing entity @p eyes
execute if score @s abilitytimer2 matches 120 run summon armor_stand ~ ~ ~ {Tags:["flashbolt"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s abilitytimer2 matches 120 run execute as @e[tag=flashbolt,limit=1,sort=nearest] at @s run tp @s ^ ^1 ^0.1 facing entity @p eyes
execute if score @s abilitytimer2 matches 140 run summon armor_stand ~ ~ ~ {Tags:["flashbolt"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s abilitytimer2 matches 140 run execute as @e[tag=flashbolt,limit=1,sort=nearest] at @s run tp @s ^ ^1 ^0.1 facing entity @p eyes
execute if score @s abilitytimer2 matches 190 run summon armor_stand ~ ~ ~ {Tags:["flashbolt"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s abilitytimer2 matches 190 run execute as @e[tag=flashbolt,limit=1,sort=nearest] at @s run tp @s ^ ^1 ^0.1 facing entity @p eyes
execute if score @s abilitytimer2 matches 210 run summon armor_stand ~ ~ ~ {Tags:["flashbolt"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s abilitytimer2 matches 210 run execute as @e[tag=flashbolt,limit=1,sort=nearest] at @s run tp @s ^ ^1 ^0.1 facing entity @p eyes
execute if score @s abilitytimer2 matches 260 run summon armor_stand ~ ~ ~ {Tags:["flashbolt"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s abilitytimer2 matches 260 run execute as @e[tag=flashbolt,limit=1,sort=nearest] at @s run tp @s ^ ^1 ^0.1 facing entity @p eyes
execute if entity @s[scores={abilitytimer2=280,hp=..350}] run particle cloud ~ ~ ~ 3 0 3 0.2 30 normal @a
execute if entity @s[scores={abilitytimer2=280,hp=..350}] run playsound block.beacon.deactivate master @a ~ ~ ~ 5 2
execute if entity @s[scores={abilitytimer2=280,hp=..350}] run tellraw @a[distance=..50] {"text":"Dance of Lustre: Static Mines!","color":"#D1EDFF","bold":true,"italic":false}
execute if entity @s[scores={abilitytimer2=280,hp=..350}] run summon armor_stand ~ ~2 ~ {Motion:[-1.0,1.0,0.0],Tags:["staticmine"],CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if entity @s[scores={abilitytimer2=280,hp=..350}] run summon armor_stand ~ ~2 ~ {Motion:[-1.0,1.0,1.0],Tags:["staticmine"],CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if entity @s[scores={abilitytimer2=280,hp=..350}] run summon armor_stand ~ ~2 ~ {Motion:[-1.0,1.0,-1.0],Tags:["staticmine"],CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if entity @s[scores={abilitytimer2=280,hp=..350}] run summon armor_stand ~ ~2 ~ {Motion:[0.0,1.0,1.0],Tags:["staticmine"],CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if entity @s[scores={abilitytimer2=290,hp=..350}] run summon armor_stand ~ ~2 ~ {Motion:[0.0,1.0,-1.0],Tags:["staticmine"],CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if entity @s[scores={abilitytimer2=290,hp=..350}] run summon armor_stand ~ ~2 ~ {Motion:[1.0,1.0,0.0],Tags:["staticmine"],CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if entity @s[scores={abilitytimer2=290,hp=..350}] run summon armor_stand ~ ~2 ~ {Motion:[1.0,1.0,-1.0],Tags:["staticmine"],CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if entity @s[scores={abilitytimer2=290,hp=..350}] run summon armor_stand ~ ~2 ~ {Motion:[1.0,1.0,1.0],Tags:["staticmine"],CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s abilitytimer2 matches 290.. run scoreboard players set @s abilitytimer2 0