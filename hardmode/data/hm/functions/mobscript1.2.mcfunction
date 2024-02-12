execute at @s run particle dust_color_transition 0.8 0.2 0.2 1 0.3 0.05 0.05 ^ ^1 ^1 0.1 0.1 0.1 0.01 15 normal
execute at @s run particle dust_color_transition 0.8 0.2 0.2 1 0.3 0.05 0.05 ^ ^1 ^1.75 0.1 0.1 0.1 0.01 15 normal
execute at @s run particle dust_color_transition 0.8 0.2 0.2 1 0.3 0.05 0.05 ^ ^1 ^2.5 0.1 0.1 0.1 0.01 15 normal
execute at @s run particle dust_color_transition 0.8 0.2 0.2 1 0.3 0.05 0.05 ^ ^1 ^3.25 0.1 0.1 0.1 0.01 15 normal
execute at @s run particle dust_color_transition 0.8 0.2 0.2 1 0.3 0.05 0.05 ^ ^1 ^4 0.1 0.1 0.1 0.01 15 normal
execute at @s run particle dust_color_transition 0.8 0.2 0.2 1 0.3 0.05 0.05 ^ ^1 ^4.75 0.1 0.1 0.1 0.01 15 normal
execute at @s run particle dust_color_transition 0.8 0.2 0.2 1 0.3 0.05 0.05 ^ ^1 ^5.5 0.1 0.1 0.1 0.01 15 normal
execute at @s run particle dust_color_transition 0.8 0.2 0.2 1 0.3 0.05 0.05 ^-1 ^1 ^2 0.1 0.1 0.1 0.01 15 normal
execute at @s run particle dust_color_transition 0.8 0.2 0.2 1 0.3 0.05 0.05 ^1 ^1 ^2 0.1 0.1 0.1 0.01 15 normal
execute at @s positioned ^ ^1 ^1 run effect give @a[distance=..2] instant_damage 1 1
execute at @s positioned ^ ^1 ^3 run effect give @a[distance=..2] instant_damage 1 1
execute at @s positioned ^ ^1 ^5 run effect give @a[distance=..2] instant_damage 1 1
execute if entity @s[scores={hp=..40}] at @s run particle dust_color_transition 0.8 0.2 0.2 1 0.3 0.05 0.05 ^ ^1 ^6.25 0.1 0.1 0.1 0.01 15 normal
execute if entity @s[scores={hp=..40}] at @s run particle dust_color_transition 0.8 0.2 0.2 1 0.3 0.05 0.05 ^ ^1 ^7 0.1 0.1 0.1 0.01 15 normal
execute if entity @s[scores={hp=..40}] at @s run particle dust_color_transition 0.8 0.2 0.2 1 0.3 0.05 0.05 ^ ^1 ^7.75 0.1 0.1 0.1 0.01 15 normal
execute if entity @s[scores={hp=..40}] at @s run particle dust_color_transition 0.8 0.2 0.2 1 0.3 0.05 0.05 ^ ^1 ^8.5 0.1 0.1 0.1 0.01 15 normal
execute if entity @s[scores={hp=..40}] at @s run particle portal ^ ^1 ^6.25 0.1 0.1 0.1 0.01 5 normal
execute if entity @s[scores={hp=..40}] at @s run particle portal ^ ^1 ^7 0.1 0.1 0.1 0.01 5 normal
execute if entity @s[scores={hp=..40}] at @s run particle portal ^ ^1 ^7.75 0.1 0.1 0.1 0.01 5 normal
execute if entity @s[scores={hp=..40}] at @s run particle portal ^ ^1 ^8.5 0.1 0.1 0.1 0.01 5 normal
execute if entity @s[scores={hp=..40}] at @s positioned ^ ^1 ^6 run effect give @a[distance=..2] instant_damage 1 1
execute if entity @s[scores={hp=..40}] at @s positioned ^ ^1 ^8 run effect give @a[distance=..2] instant_damage 1 1