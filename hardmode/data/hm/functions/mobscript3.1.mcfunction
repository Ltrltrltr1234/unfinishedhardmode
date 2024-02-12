execute if score @s abilitytimer2 matches 10 at @p[distance=..50] run summon armor_stand ~3 ~ ~ {Tags:["aoelightning"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s abilitytimer2 matches 110 at @p[distance=..50] run summon armor_stand ~-3 ~ ~ {Tags:["aoelightning"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s abilitytimer2 matches 20 if predicate hm:20percent run summon armor_stand ~8 ~ ~ {Tags:["aoelightning"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s abilitytimer2 matches 40 if predicate hm:20percent run summon armor_stand ~ ~ ~8 {Tags:["aoelightning"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s abilitytimer2 matches 60 if predicate hm:20percent run summon armor_stand ~-8 ~ ~ {Tags:["aoelightning"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s abilitytimer2 matches 80 if predicate hm:20percent run summon armor_stand ~ ~ ~-8 {Tags:["aoelightning"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s abilitytimer2 matches 130 at @p[distance=..50] run summon armor_stand ~ ~ ~3 {Tags:["aoelightning"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s abilitytimer2 matches 230 at @p[distance=..50] run summon armor_stand ~ ~ ~-3 {Tags:["aoelightning"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s abilitytimer2 matches 140 if predicate hm:20percent run summon armor_stand ~8 ~ ~ {Tags:["aoelightning"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s abilitytimer2 matches 160 if predicate hm:20percent run summon armor_stand ~ ~ ~8 {Tags:["aoelightning"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s abilitytimer2 matches 180 if predicate hm:20percent run summon armor_stand ~-8 ~ ~ {Tags:["aoelightning"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if score @s abilitytimer2 matches 200 if predicate hm:20percent run summon armor_stand ~ ~ ~-8 {Tags:["aoelightning"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if entity @s[scores={abilitytimer2=170..240,hp=..350}] run particle glow ~ ~ ~ 1 1 1 0.3 5 normal @a
execute if entity @s[scores={abilitytimer2=170..240,hp=..350}] run effect give @s resistance 1 5
execute if entity @s[scores={abilitytimer2=170,hp=..350}] facing entity @p feet run summon armor_stand ^ ^ ^3 {Tags:["thunderstrikes"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}
execute if entity @s[scores={abilitytimer2=170,hp=..350}] facing entity @p feet run tellraw @a[distance=..50] {"text":"Wrathful Sky: Thunderous Strikes!","color":"#85FFE2","bold":true,"italic":false}

execute if score @s abilitytimer2 matches 270.. if score @s hp matches 201.. run scoreboard players set @s abilitytimer2 0