execute as @e[tag=withershade] run scoreboard players add @s abilitytimer2 1
execute as @e[tag=withershade] at @s run scoreboard players add @s bossabilitytimer 1
execute as @e[tag=withershade] at @s run particle large_smoke ~ ~ ~ 0.3 0 0.3 0 3 normal @a
execute as @e[tag=withershade,scores={abilitytimer2=300..}] at @s run particle large_smoke ~ ~ ~ 0 0 0 0.3 50 normal @a
execute as @e[tag=withershade,scores={abilitytimer2=300..}] run tp @s ~ ~-999 ~
execute as @e[tag=withershade,scores={abilitytimer2=300..}] run kill @s
execute as @e[tag=withershade,scores={bossabilitytimer=60..}] at @s if entity @p[distance=10..] facing entity @p eyes rotated ~ 45 run function hm:motion-3
execute as @e[tag=withershade,scores={bossabilitytimer=60..}] at @s if entity @p[distance=10..] run scoreboard players set @s bossabilitytimer 0