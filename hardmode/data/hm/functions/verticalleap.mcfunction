execute store result score @s targety run data get entity @p Pos[1] 10
execute store result score @s selfy run data get entity @s Pos[1] 10
scoreboard players operation @s selfy -= @s targety
execute if score @s selfy matches 40.. if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air run tp @s ~ ~-1 ~
execute if score @s selfy matches ..-10 if block ~ ~3 ~ air run tp @s ~ ~0.5 ~
execute if score @s selfy matches 40.. if block ~ ~-1 ~ water if block ~ ~-2 ~ water if block ~ ~-3 ~ water run tp @s ~ ~-1 ~
execute if score @s selfy matches ..-10 if block ~ ~3 ~ water run tp @s ~ ~0.5 ~
execute run data modify entity @s FallDistance set value 0