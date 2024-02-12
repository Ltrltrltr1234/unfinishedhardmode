function hm:mobtags
execute as @e[type=zombie,tag=!bosschecked] run function hm:zombieboss
execute as @e[type=skeleton,tag=!bosschecked] run function hm:skeletonboss
execute as @e[type=creeper,tag=!bosschecked] at @s run function hm:creeperboss
execute in overworld run execute as @e[type=husk,tag=!bosschecked] at @s run function hm:huskboss
execute in overworld run execute as @e[type=drowned,tag=!bosschecked] at @s run function hm:drownedboss
execute in overworld run execute as @e[type=stray,tag=!bosschecked] at @s run function hm:strayboss
execute in the_nether run execute as @e[type=wither_skeleton,tag=!bosschecked] at @s run function hm:witherskellyboss
execute as @e[tag=armour,tag=!armourchecked] store result score @s ycheck run data get entity @s Pos[1] 1
execute as @e[type=!player,tag=!hpmod,tag=!passive] run function hm:hpmod
execute in overworld run function hm:overworldhpmod
execute as @a[nbt={Dimension:"minecraft:the_nether"}] at @s run function hm:netherhpmod
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run function hm:endhpmod
execute as @e[type=!player,tag=!atkmod,tag=!passive] run function hm:atkmod
execute as @e[tag=!armourchecked,type=wither_skeleton] run function hm:withergear
execute as @e[tag=armour,tag=!armourchecked,scores={ycheck=..0}] run function hm:armouradvanced
execute as @e[tag=armour,tag=!armourchecked,scores={ycheck=1..}] run function hm:armour
execute as @e[tag=weap,tag=!weaponchecked,scores={ycheck=1..}] run function hm:weapons
execute as @e[tag=weap,tag=!weaponchecked,scores={ycheck=..0}] run function hm:weaponsadvanced
execute as @e[tag=leapability] at @s unless entity @p[distance=..1] if block ~ ~-1 ~ air if block ~ ~-2 ~ air run function hm:leap
execute as @e[tag=leapability] at @s run function hm:verticalleap

execute as @a at @s if entity @e[distance=..10,type=!player] run title @s actionbar [{"selector":"@e[distance=..10,sort=nearest,type=!player,limit=1]"},{"text":"'s Health: "},{"nbt":"Health","entity":"@e[distance=..10,sort=nearest,type=!player,limit=1]"}]

function hm:mobscript1
function hm:mobscript2
function hm:mobscript3
function hm:mobscript4
function hm:mobscript5
function hm:mobscript6
function hm:mobscript7
function hm:mobscript8
function hm:mobscript9
function hm:mobscript10
function hm:mobscript11
function hm:mobscript12
function hm:mobscript13
function hm:mobscript14
function hm:mobscript15
function hm:obliterator
function hm:annihilator
function hm:legionenemies