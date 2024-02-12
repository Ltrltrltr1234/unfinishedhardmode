attribute @s generic.max_health modifier add c4dac983-e9dd-4cf4-8480-a96325970e22 "hpmod" 0.5 multiply_base
execute store result entity @s Health float 1 run attribute @s generic.max_health get 1
tag @s add hpmod