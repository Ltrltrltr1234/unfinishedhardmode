execute as @e[tag=legionmeteor] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=legionmeteor,scores={abilitytimer2=1}] at @s run scoreboard players set @s attackstate 1
execute as @e[tag=legionmeteor,scores={attackstate=1}] at @s run tp @s ~ ~-0.3 ~
execute as @e[tag=legionmeteor,scores={attackstate=1}] at @s run particle flame ~ ~ ~ 3 3 3 0.8 50 normal @a
execute as @e[tag=legionmeteor,scores={attackstate=1}] at @s run particle large_smoke ~ ~ ~ 2.5 2.5 2.5 0.3 50 normal @a 
execute as @e[tag=legionmeteor,scores={attackstate=1}] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace magma_block
execute as @e[tag=legionmeteor,scores={attackstate=1}] at @s run fill ~-2 ~ ~-2 ~2 ~4 ~2 magma_block replace air
execute as @e[tag=legionmeteor,scores={attackstate=1}] at @s unless block ~ ~-1 ~ air run particle explosion_emitter ~ ~ ~ 10 10 10 0 100 normal @a
execute as @e[tag=legionmeteor,scores={attackstate=1}] at @s unless block ~ ~-1 ~ air run particle large_smoke ~ ~ ~ 5 5 5 1 1000 normal @a
execute as @e[tag=legionmeteor,scores={attackstate=1}] at @s unless block ~ ~-1 ~ air run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace magma_block
execute as @e[tag=legionmeteor,scores={attackstate=1}] at @s unless block ~ ~-1 ~ air run playsound entity.generic.explode master @a ~ ~ ~ 10 1 1
execute as @e[tag=legionmeteor,scores={attackstate=1}] at @s unless block ~ ~-1 ~ air run playsound entity.blaze.death master @a ~ ~ ~ 10 0.5 1
execute as @e[tag=legionmeteor,scores={attackstate=1}] at @s unless block ~ ~-1 ~ air run tellraw @a [{"selector":"@a[distance=..50]","separator":", and you, ","color":"#75221B","bold":true,"italic":false},{"text":"...prepare yourself, for the coming of your fate.","color":"#75221B","bold":true,"italic":false}]
execute as @e[tag=legionmeteor,scores={attackstate=1}] at @s unless block ~ ~-1 ~ air run title @a subtitle {"text":"Insurgents from another realm","color":"#3B260C","bold":false,"italic":true}
execute as @e[tag=legionmeteor,scores={attackstate=1}] at @s unless block ~ ~-1 ~ air run title @a title {"text":"LEGION OF CINDER","color":"#750000","bold":true,"italic":false}
execute as @e[tag=legionmeteor,scores={attackstate=1}] at @s unless block ~ ~-1 ~ air run scoreboard players set @s attackstate 2
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run particle flame ~ ~ ~ 6 6 6 0.1 5 normal @a
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run particle crimson_spore ~ ~10 ~ 10 1 10 0.1 15 normal @a
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run particle lava ~ ~ ~ 5 0 5 0 1 normal @a
execute as @e[tag=legionmeteor,scores={abilitytimer3=1}] at @s run fill ~-39 ~-2 ~-39 ~39 ~-6 ~39 blackstone replace #mineable/shovel
execute as @e[tag=legionmeteor,scores={abilitytimer3=1}] at @s run fill ~-39 ~-2 ~-39 ~39 ~-6 ~39 blackstone replace #mineable/pickaxe
execute as @e[tag=legionmeteor,scores={abilitytimer3=1}] at @s run fill ~-39 ~3 ~-39 ~39 ~-1 ~39 blackstone replace #mineable/shovel
execute as @e[tag=legionmeteor,scores={abilitytimer3=1}] at @s run fill ~-39 ~3 ~-39 ~39 ~-1 ~39 blackstone replace #mineable/pickaxe
execute as @e[tag=legionmeteor,scores={abilitytimer3=1}] at @s run fill ~-25 ~-4 ~-25 ~25 ~-5 ~25 soul_soil replace #mineable/shovel
execute as @e[tag=legionmeteor,scores={abilitytimer3=1}] at @s run fill ~-25 ~4 ~-25 ~25 ~-5 ~25 soul_soil replace #mineable/pickaxe
execute as @e[tag=legionmeteor,scores={abilitytimer3=1}] at @s run fill ~-15 ~5 ~-15 ~15 ~-8 ~15 crimson_nylium replace #mineable/shovel
execute as @e[tag=legionmeteor,scores={abilitytimer3=1}] at @s run fill ~-15 ~5 ~-15 ~15 ~-8 ~15 crimson_nylium replace #mineable/pickaxe
execute as @e[tag=legionmeteor,scores={abilitytimer3=1}] at @s run fill ~-10 ~5 ~-10 ~10 ~-10 ~10 red_sandstone replace #mineable/shovel
execute as @e[tag=legionmeteor,scores={abilitytimer3=1}] at @s run fill ~-10 ~5 ~-10 ~10 ~-10 ~10 red_sandstone replace #mineable/pickaxe
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run fill ~-10 ~ ~-10 ~10 ~16 ~10 air replace red_sandstone
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run fill ~-10 ~ ~-10 ~10 ~16 ~10 air replace crimson_nylium
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run fill ~-10 ~ ~-10 ~10 ~16 ~10 air replace soul_soil
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run fill ~-10 ~ ~-10 ~10 ~16 ~10 air replace blackstone
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run fill ~-10 ~-1 ~-10 ~10 ~-10 ~10 red_sandstone replace air
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run fill ~-10 ~-1 ~-10 ~10 ~-10 ~10 red_sandstone replace air
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run fill ~-8 ~ ~-8 ~8 ~ ~8 nether_brick_slab replace air
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run fill ~-6 ~ ~-6 ~6 ~ ~6 nether_bricks replace nether_brick_slab
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run fill ~-4 ~1 ~-4 ~4 ~1 ~4 netherrack replace air
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run fill ~-2 ~1 ~-2 ~2 ~1 ~2 nether_wart_block replace air
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run fill ~-1 ~3 ~-1 ~1 ~6 ~1 magma_block replace air
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run fill ~-1 ~2 ~-1 ~1 ~2 ~1 glowstone replace air
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run fill ~-1 ~7 ~-1 ~1 ~8 ~1 red_nether_bricks replace air
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run fill ~-1 ~9 ~-1 ~1 ~15 ~1 nether_bricks replace air
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run fill ~-1 ~16 ~-1 ~1 ~16 ~1 fire replace air
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run fill ~-1 ~12 ~-1 ~1 ~12 ~1 glowstone replace nether_bricks
execute as @e[tag=legionmeteor,scores={attackstate=2}] at @s run scoreboard players add @s abilitytimer3 1
execute as @e[tag=legionmeteor,scores={abilitytimer3=1}] at @s run scoreboard players set @s onslaught 0
execute as @e[tag=legionmeteor,scores={abilitytimer3=1}] at @s run scoreboard players set @s lcbossspawned 0
execute as @e[tag=legionmeteor,scores={abilitytimer3=1}] at @s run scoreboard players set @s lcenemycd 100

execute as @e[tag=legionmeteor,scores={abilitytimer3=100..}] at @s run scoreboard players set @s enemiesleft 0
execute as @e[tag=legionmeteor,scores={abilitytimer3=100..}] at @s run execute as @e[tag=lcmob] at @s run scoreboard players add @e[tag=legionmeteor,limit=1,sort=nearest] enemiesleft 1
execute as @e[tag=legionmeteor,scores={lcenemycd=1..}] at @s run scoreboard players remove @s lcenemycd 1
execute as @e[tag=legionmeteor,scores={abilitytimer3=100..,enemiesleft=0}] at @s run scoreboard players add @s onslaught 1
execute as @e[tag=legionmeteor,scores={abilitytimer3=100..,enemiesleft=0,onslaught=11..}] at @s run kill @s
execute as @e[tag=legionmeteor,scores={abilitytimer3=100..,enemiesleft=0}] at @s run scoreboard players set @s lcenemycd 0
execute as @e[tag=legionmeteor,scores={abilitytimer3=100..,enemiesleft=0}] at @s run title @a subtitle [{"text": ""}]
execute as @e[tag=legionmeteor,scores={abilitytimer3=100..,enemiesleft=0,onslaught=1}] at @s run title @a subtitle {"text":"The Dawn of Anarchy","color":"#780000","bold":true,"italic":false}
execute as @e[tag=legionmeteor,scores={abilitytimer3=100..,enemiesleft=0,onslaught=2}] at @s run title @a subtitle {"text":"Hearts of Brimstone","color":"#780000","bold":true,"italic":false}
execute as @e[tag=legionmeteor,scores={abilitytimer3=100..,enemiesleft=0,onslaught=3}] at @s run title @a subtitle {"text":"Blasphemous Souls","color":"#780000","bold":true,"italic":false}
execute as @e[tag=legionmeteor,scores={abilitytimer3=100..,enemiesleft=0,onslaught=4}] at @s run title @a subtitle {"text":"Sacrilegious Dominion","color":"#780000","bold":true,"italic":false}
execute as @e[tag=legionmeteor,scores={abilitytimer3=100..,enemiesleft=0,onslaught=5}] at @s run title @a subtitle {"text":"Ashes to Ashes","color":"#780000","bold":true,"italic":false}
execute as @e[tag=legionmeteor,scores={abilitytimer3=100..,enemiesleft=0,onslaught=6}] at @s run title @a subtitle {"text":"Fathomless Hunger","color":"#780000","bold":true,"italic":false}
execute as @e[tag=legionmeteor,scores={abilitytimer3=100..,enemiesleft=0,onslaught=7}] at @s run title @a subtitle {"text":"False Saints","color":"#780000","bold":true,"italic":false}
execute as @e[tag=legionmeteor,scores={abilitytimer3=100..,enemiesleft=0,onslaught=8}] at @s run title @a subtitle {"text":"Choir of the Deaf","color":"#780000","bold":true,"italic":false}
execute as @e[tag=legionmeteor,scores={abilitytimer3=100..,enemiesleft=0,onslaught=9}] at @s run title @a subtitle {"text":"Messengers of Malice","color":"#780000","bold":true,"italic":false}
execute as @e[tag=legionmeteor,scores={abilitytimer3=100..,enemiesleft=0,onslaught=10}] at @s run title @a subtitle {"text":"Sinful Beauty","color":"#780000","bold":true,"italic":false}
execute as @e[tag=legionmeteor,scores={abilitytimer3=100..,enemiesleft=0}] at @s run title @a title [{"text":"Onslaught ","color":"#860000","bold":true,"italic":false},{"score":{"name":"@s","objective":"onslaught"},"color":"#D15B00","bold":true,"italic":false}]
execute as @e[tag=legionmeteor,scores={abilitytimer3=100..,enemiesleft=0}] at @s run playsound entity.ender_dragon.growl master @a ~ ~ ~ 30 0.5
execute as @e[tag=legionmeteor,scores={abilitytimer3=100..,enemiesleft=0}] at @s run scoreboard players set @s abilitytimer3 20

execute as @e[tag=legionmeteor,scores={enemiesleft=0,onslaught=1..5}] at @s run scoreboard players set @s lcenemytotal 5
execute as @e[tag=legionmeteor,scores={enemiesleft=0,onslaught=6..9}] at @s run scoreboard players set @s lcenemytotal 10
execute as @e[tag=legionmeteor,scores={enemiesleft=0,onslaught=10}] at @s run scoreboard players set @s lcenemytotal 50

execute as @e[tag=legionmeteor,scores={lcenemycd=0,lcenemytotal=1..,onslaught=1..}] at @s run tag @s add lcspawn1
execute as @e[tag=legionmeteor,tag=lcspawn1] at @s run summon armor_stand ~ ~20 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["spawnlc","spawnlc1","lcmob"],DisabledSlots:4144959}
execute as @e[tag=legionmeteor,tag=lcspawn1] at @s run scoreboard players remove @s lcenemytotal 1
execute as @e[tag=legionmeteor,tag=lcspawn1] at @s run tag @s remove lcspawn1
execute as @e[tag=legionmeteor,scores={lcenemycd=0,lcenemytotal=1..,onslaught=1..}] at @s run tag @s add lcspawn2
execute as @e[tag=legionmeteor,tag=lcspawn2] at @s run summon armor_stand ~ ~20 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["spawnlc","spawnlc2","lcmob"],DisabledSlots:4144959}
execute as @e[tag=legionmeteor,tag=lcspawn2] at @s run scoreboard players remove @s lcenemytotal 1
execute as @e[tag=legionmeteor,tag=lcspawn2] at @s run tag @s remove lcspawn2
execute as @e[tag=legionmeteor,scores={lcenemycd=0,lcenemytotal=2..,onslaught=1..}] at @s run tag @s add lcspawn3
execute as @e[tag=legionmeteor,tag=lcspawn3] at @s run summon armor_stand ~ ~20 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["spawnlc","spawnlc3","lcmob"],DisabledSlots:4144959}
execute as @e[tag=legionmeteor,tag=lcspawn3] at @s run scoreboard players remove @s lcenemytotal 2
execute as @e[tag=legionmeteor,tag=lcspawn3] at @s run tag @s remove lcspawn3

execute as @e[tag=legionmeteor,scores={lcenemycd=..0,onslaught=1}] at @s run scoreboard players set @s lcenemycd 200
execute as @e[tag=legionmeteor,scores={lcenemycd=..0,onslaught=2}] at @s run scoreboard players set @s lcenemycd 120
execute as @e[tag=legionmeteor,scores={lcenemycd=..0,onslaught=3}] at @s run scoreboard players set @s lcenemycd 80
execute as @e[tag=legionmeteor,scores={lcenemycd=..0,onslaught=4}] at @s run scoreboard players set @s lcenemycd 60
execute as @e[tag=legionmeteor,scores={lcenemycd=..0,onslaught=5}] at @s run scoreboard players set @s lcenemycd 40
execute as @e[tag=legionmeteor,scores={lcenemycd=..0,onslaught=6}] at @s run scoreboard players set @s lcenemycd 30
execute as @e[tag=legionmeteor,scores={lcenemycd=..0,onslaught=7}] at @s run scoreboard players set @s lcenemycd 20
execute as @e[tag=legionmeteor,scores={lcenemycd=..0,onslaught=8}] at @s run scoreboard players set @s lcenemycd 15
execute as @e[tag=legionmeteor,scores={lcenemycd=..0,onslaught=9}] at @s run scoreboard players set @s lcenemycd 10
execute as @e[tag=legionmeteor,scores={lcenemycd=..0,onslaught=10}] at @s run scoreboard players set @s lcenemycd 5

execute as @e[tag=spawnlc] at @s run scoreboard players add @s abilitytimer2 1
execute as @e[tag=spawnlc,scores={abilitytimer2=50..}] at @s run playsound block.fire.extinguish master @a ~ ~ ~ 0.9 2
execute as @e[tag=spawnlc] at @s run particle large_smoke ~ ~ ~ 0.1 0.3 0.1 0.1 6 normal @a
execute as @e[tag=spawnlc,scores={abilitytimer2=1..20}] if predicate hm:50percent at @s run tp @s ~ ~ ~ ~36 ~
execute as @e[tag=spawnlc,scores={abilitytimer2=21..50}] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=spawnlc,scores={abilitytimer2=51..}] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute as @e[tag=spawnlc,scores={abilitytimer2=120..}] at @s run kill @s
execute as @e[tag=spawnlc,scores={abilitytimer2=51..}] at @s unless block ~ ~-1 ~ air run particle flame ~ ~ ~ 0 0 0 0.5 50 normal @a
execute as @e[tag=spawnlc,scores={abilitytimer2=51..}] at @s unless block ~ ~-1 ~ air run particle smoke ~ ~ ~ 0 0 0 0.4 30 normal @a
execute as @e[tag=spawnlc,scores={abilitytimer2=51..}] at @s unless block ~ ~-1 ~ air run playsound block.portal.travel master @a ~ ~ ~ 0.3 2
execute as @e[tag=spawnlc,tag=spawnlc1,scores={abilitytimer2=51..}] at @s unless block ~ ~-1 ~ air run summon husk ~ ~ ~ {CustomNameVisible:0b,Team:"legionofcinder",PersistenceRequired:0b,Health:25f,IsBaby:0b,Tags:["lcmob","lcmob1","armourchecked","weaponchecked","bosschecked"],CustomName:'{"text":"Fireblade","color":"#E02B16","bold":true,"italic":false}',HandItems:[{id:"minecraft:golden_sword",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;372092581,1087391794,-1330918733,2050607314],Slot:"mainhand"}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:13909813},Unbreakable:1b}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:15107376},Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16750111},Unbreakable:1b}},{id:"minecraft:player_head",Count:1b,tag:{Unbreakable:1b,SkullOwner:{Id:[I;401093841,-1464383237,-1673491269,-871502953],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhY2M0ODM1OWY2OGVhYjliOGM1MGQ3ZDg0MDUyYzE2NzVlMWJjOGY2NTMzNGVkMDE3N2Q4MDk0NDk5NWFmMCJ9fX0="}]}}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:12,Amplifier:10b,Duration:99999999,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:25},{Name:"generic.follow_range",Base:1028},{Name:"generic.knockback_resistance",Base:0.2},{Name:"generic.movement_speed",Base:0.3},{Name:"generic.attack_damage",Base:10},{Name:"generic.armor",Base:3},{Name:"generic.armor_toughness",Base:0},{Name:"generic.attack_knockback",Base:3},{Name:"zombie.spawn_reinforcements",Base:0}],DeathLootTable:"hm:emptyloot"}
execute as @e[tag=spawnlc,tag=spawnlc1,scores={abilitytimer2=51..}] at @s unless block ~ ~-1 ~ air run summon skeleton ~ ~ ~ {CustomNameVisible:0b,Team:"legionofcinder",PersistenceRequired:0b,Health:20f,Tags:["lcmob","lcmob2","armourchecked","weaponchecked","bosschecked"],CustomName:'{"text":"Flameslinger","color":"#E08A34","bold":true,"italic":false}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:10s},{id:"minecraft:punch",lvl:2s},{id:"minecraft:flame",lvl:1s}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:9516598},Unbreakable:1b}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5713197},Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4004641},Unbreakable:1b}},{id:"minecraft:player_head",Count:1b,tag:{Unbreakable:1b,SkullOwner:{Id:[I;-659948574,-480490690,-1283267814,-616935161],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzdjZmI4YzEzYWFiNjE0NTY5ZGNlOTllNTllZTU3Y2NhMWQyMjVjNjBmNWU4MGJhZDdjMTdmY2JlZWE5MjIzOSJ9fX0="}]}}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:12,Amplifier:10b,Duration:99999999,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.follow_range",Base:1028},{Name:"generic.knockback_resistance",Base:0.4},{Name:"generic.movement_speed",Base:0.26},{Name:"generic.armor",Base:3},{Name:"generic.armor_toughness",Base:0},{Name:"generic.attack_knockback",Base:0}],DeathLootTable:"hm:emptyloot"}
execute as @e[tag=spawnlc,scores={abilitytimer2=51..}] at @s unless block ~ ~-1 ~ air run kill @s