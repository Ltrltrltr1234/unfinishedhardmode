execute store result score @s motionx1 run data get entity @s Pos[0] 1000
execute store result score @s motiony1 run data get entity @s Pos[1] 1000
execute store result score @s motionz1 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^0.1

execute store result score @s motionx2 run data get entity @s Pos[0] 1000
execute store result score @s motiony2 run data get entity @s Pos[1] 1000
execute store result score @s motionz2 run data get entity @s Pos[2] 1000

execute store result entity @s Motion[0] double 0.02 run scoreboard players operation @s motionx2 -= @s motionx1
execute store result entity @s Motion[1] double 0.02 run scoreboard players operation @s motiony2 -= @s motiony1
execute store result entity @s Motion[2] double 0.02 run scoreboard players operation @s motionz2 -= @s motionz1