#not exactly a mob, just an attack script for blizzard scourge's blizzard arrow

execute as @e[tag=blizzardarrow] run scoreboard players add @s abilitytimer2 1
execute as @e[tag=blizzardshard] run scoreboard players add @s abilitytimer2 1
execute as @e[tag=blizzardarrow] at @s run tp @s ^ ^ ^0.8
execute as @e[tag=blizzardarrow] at @s run tag @s add projdead
execute as @e[tag=blizzardarrow] at @s if block ^ ^1 ^0.1 air run tag @s remove projdead
execute as @e[tag=blizzardarrow] at @s if block ^ ^1 ^0.1 water run tag @s remove projdead
execute as @e[tag=blizzardarrow] at @s if entity @p[distance=..2] run tag @s add projdead
execute as @e[tag=blizzardarrow] at @s positioned ~ ~1 ~ run particle dust_color_transition 0.690 0.886 1.000 1 0.373 0.416 0.588 ~ ~ ~ 0.1 0.1 0.1 0 20 normal
execute as @e[tag=blizzardarrow,scores={abilitytimer2=200..}] run tag @s add projdead
execute as @e[tag=blizzardshard,scores={abilitytimer2=20..}] at @s run kill @s
execute as @e[tag=blizzardarrow,tag=projdead] at @s run effect give @e[type=!player,distance=..5] resistance 1 5
execute as @e[tag=blizzardarrow,tag=projdead] at @s run summon arrow ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,pickup:2b,damage:10d,crit:1b,PierceLevel:10b,Color:11065343,Motion:[-1.0,0.0,1.0],Tags:["blizzardshard"],CustomName:'{"text":"Blizzard Shard","color":"#7DCFFF","bold":true}',SoundEvent:"block.grass.break",CustomPotionEffects:[{Id:2,Amplifier:5b,Duration:20},{Id:4,Amplifier:5b,Duration:20}]}
execute as @e[tag=blizzardarrow,tag=projdead] at @s run summon arrow ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,pickup:2b,damage:10d,crit:1b,PierceLevel:10b,Color:11065343,Motion:[1.0,0.0,-1.0],Tags:["blizzardshard"],CustomName:'{"text":"Blizzard Shard","color":"#7DCFFF","bold":true}',SoundEvent:"block.grass.break",CustomPotionEffects:[{Id:2,Amplifier:5b,Duration:20},{Id:4,Amplifier:5b,Duration:20}]}
execute as @e[tag=blizzardarrow,tag=projdead] at @s run summon arrow ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,pickup:2b,damage:10d,crit:1b,PierceLevel:10b,Color:11065343,Motion:[-1.0,0.0,-1.0],Tags:["blizzardshard"],CustomName:'{"text":"Blizzard Shard","color":"#7DCFFF","bold":true}',SoundEvent:"block.grass.break",CustomPotionEffects:[{Id:2,Amplifier:5b,Duration:20},{Id:4,Amplifier:5b,Duration:20}]}
execute as @e[tag=blizzardarrow,tag=projdead] at @s run summon arrow ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,pickup:2b,damage:10d,crit:1b,PierceLevel:10b,Color:11065343,Motion:[1.4,0.0,0.0],Tags:["blizzardshard"],CustomName:'{"text":"Blizzard Shard","color":"#7DCFFF","bold":true}',SoundEvent:"block.grass.break",CustomPotionEffects:[{Id:2,Amplifier:5b,Duration:20},{Id:4,Amplifier:5b,Duration:20}]}
execute as @e[tag=blizzardarrow,tag=projdead] at @s run summon arrow ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,pickup:2b,damage:10d,crit:1b,PierceLevel:10b,Color:11065343,Motion:[-1.4,0.0,0.0],Tags:["blizzardshard"],CustomName:'{"text":"Blizzard Shard","color":"#7DCFFF","bold":true}',SoundEvent:"block.grass.break",CustomPotionEffects:[{Id:2,Amplifier:5b,Duration:20},{Id:4,Amplifier:5b,Duration:20}]}
execute as @e[tag=blizzardarrow,tag=projdead] at @s run summon arrow ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,pickup:2b,damage:10d,crit:1b,PierceLevel:10b,Color:11065343,Motion:[0.0,0.0,-1.4],Tags:["blizzardshard"],CustomName:'{"text":"Blizzard Shard","color":"#7DCFFF","bold":true}',SoundEvent:"block.grass.break",CustomPotionEffects:[{Id:2,Amplifier:5b,Duration:20},{Id:4,Amplifier:5b,Duration:20}]}
execute as @e[tag=blizzardarrow,tag=projdead] at @s run summon arrow ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,pickup:2b,damage:10d,crit:1b,PierceLevel:10b,Color:11065343,Motion:[0.0,0.0,1.4],Tags:["blizzardshard"],CustomName:'{"text":"Blizzard Shard","color":"#7DCFFF","bold":true}',SoundEvent:"block.grass.break",CustomPotionEffects:[{Id:2,Amplifier:5b,Duration:20},{Id:4,Amplifier:5b,Duration:20}]}
execute as @e[tag=blizzardarrow,tag=projdead] at @s run playsound entity.skeleton.converted_to_stray master @a ~ ~ ~ 2 1
execute as @e[tag=blizzardarrow,tag=projdead] at @s run kill @s