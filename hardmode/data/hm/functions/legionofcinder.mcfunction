scoreboard objectives add enemiesleft dummy "legion of cinder: enemies left"
scoreboard objectives add onslaught dummy "legion of cinder: onslaught wave"
scoreboard objectives add lcenemycd dummy "legion of cinder: enemy spawner cooldown"
scoreboard objectives add lcenemytotal dummy "legion of cinder: enemy spawner costs"
scoreboard objectives add lcbossspawned dummy "legion of cinder: boss spawned?"
team add legionofcinder "LEGION OF CINDER"
team modify legionofcinder friendlyFire false

execute unless entity @e[tag=legionmeteor] run summon armor_stand ~ ~30 ~ {Tags:["legionmeteor"],CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959}