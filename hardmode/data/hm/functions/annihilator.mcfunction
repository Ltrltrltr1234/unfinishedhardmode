execute as @e[tag=annihilator] run data modify entity @s Invulnerable set value 0b
execute as @e[tag=annihilator] run data modify entity @s FallDistance set value 0
execute as @e[tag=annihilator] at @s if entity @e[tag=obliterator,limit=1,sort=nearest] store result score @s targety run data get entity @e[tag=obliterator,limit=1,sort=nearest] Pos[1] 1
execute as @e[tag=annihilator] at @s store result score @s selfy run data get entity @s Pos[1] 1
execute as @e[tag=annihilator] at @s unless block ^ ^1 ^1 air unless block ^ ^ ^1 water unless block ^ ^ ^1 lava run effect give @s resistance 1 4 true
execute as @e[tag=annihilator] at @s unless block ^ ^1 ^1 air unless block ^ ^ ^1 water unless block ^ ^ ^1 lava run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:0b,ExplosionRadius:2b,Fuse:0,ignited:1b,Tags:["bosschecked"],CustomName:'{"text":"Energy Bash","color":"red","bold":true,"italic":false}'}
execute as @e[tag=annihilator] at @s run tp @s ~ ~ ~ facing entity @e[tag=obliterator,limit=1,sort=nearest] eyes
execute as @e[tag=annihilator] at @s facing entity @e[tag=obliterator,limit=1,sort=nearest] eyes run function hm:motion-obliterator
execute as @e[tag=annihilator] at @s if entity @e[tag=obliterator,limit=1,sort=nearest,distance=..3] run effect give @s resistance 1 4 true
execute as @e[tag=annihilator] at @s if entity @e[tag=obliterator,limit=1,sort=nearest,distance=..3] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,PersistenceRequired:1b,powered:1b,ExplosionRadius:3b,Fuse:0,ignited:1b,Tags:["bosschecked"],CustomName:'{"text":"Abyssal Bash","color":"red","bold":true,"italic":false}'}
execute as @e[tag=annihilator] at @s at @e[tag=obliterator,limit=1,sort=nearest,distance=..5] run effect give @s resistance 1 4 true
execute as @e[tag=annihilator] at @s at @e[tag=obliterator,limit=1,sort=nearest,distance=..5] run summon lightning_bolt ~ ~ ~