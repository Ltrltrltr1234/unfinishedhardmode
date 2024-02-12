#not exactly a mob, just an attack script for emperor of shade's shadow slash

execute as @e[tag=shadowslash] run scoreboard players add @s abilitytimer2 1
execute as @e[tag=shadowslash] at @s run tp @s ^ ^ ^4
execute as @e[tag=shadowslash] at @s run tag @s add projdead
execute as @e[tag=shadowslash] at @s if block ^ ^1 ^0.1 air run tag @s remove projdead
execute as @e[tag=shadowslash] at @s if block ^ ^1 ^0.1 water run tag @s remove projdead
execute as @e[tag=shadowslash] at @s positioned ^ ^ ^2 if entity @p[distance=..3] run tag @s add projdead
execute as @e[tag=shadowslash,tag=projdead] at @s run particle smoke ~ ~ ~ 0 0 0 0.5 100 normal
execute as @e[tag=shadowslash,tag=projdead] at @s run particle large_smoke ~ ~ ~ 0 0 0 0.3 100 normal
execute as @e[tag=shadowslash] at @s rotated ~ ~ positioned ^ ^ ^2 run particle large_smoke ~ ~ ~ 0 0 0 0 5 normal
execute as @e[tag=shadowslash] at @s rotated ~15 ~ positioned ^ ^ ^2 run particle large_smoke ~ ~ ~ 0 0 0 0 5 normal
execute as @e[tag=shadowslash] at @s rotated ~-15 ~ positioned ^ ^ ^2 run particle large_smoke ~ ~ ~ 0 0 0 0 5 normal
execute as @e[tag=shadowslash] at @s rotated ~30 ~ positioned ^ ^ ^2 run particle large_smoke ~ ~ ~ 0 0 0 0 5 normal
execute as @e[tag=shadowslash] at @s rotated ~-30 ~ positioned ^ ^ ^2 run particle large_smoke ~ ~ ~ 0 0 0 0 5 normal
execute as @e[tag=shadowslash] at @s rotated ~45 ~ positioned ^ ^ ^2 run particle large_smoke ~ ~ ~ 0 0 0 0 5 normal
execute as @e[tag=shadowslash] at @s rotated ~-45 ~ positioned ^ ^ ^2 run particle large_smoke ~ ~ ~ 0 0 0 0 5 normal
execute as @e[tag=shadowslash] at @s rotated ~60 ~ positioned ^ ^ ^2 run particle large_smoke ~ ~ ~ 0 0 0 0 5 normal
execute as @e[tag=shadowslash] at @s rotated ~-60 ~ positioned ^ ^ ^2 run particle large_smoke ~ ~ ~ 0 0 0 0 5 normal
execute as @e[tag=shadowslash,scores={abilitytimer2=200..}] at @s run tag @s add projdead
execute as @e[tag=shadowslash,tag=projdead] at @s run effect give @e[type=player,distance=..4] instant_damage 1 0
execute as @e[tag=shadowslash,tag=projdead] at @s run effect give @e[type=player,distance=..4] wither 5 3
execute as @e[tag=shadowslash,tag=projdead] at @s run playsound entity.wither.break_block master @a ~ ~ ~ 2 2
execute as @e[tag=shadowslash,tag=projdead] at @s run kill @s