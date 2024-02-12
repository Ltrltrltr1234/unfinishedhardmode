execute at @s run playsound entity.blaze.death master @a ~ ~ ~ 2 2
execute at @s facing entity @p feet rotated ~90 ~ run function hm:motion-2
execute at @s facing entity @p feet if predicate hm:50percent rotated ~-90 ~ run function hm:motion-2
execute at @s anchored eyes facing entity @p eyes run summon arrow ^ ^ ^1 {pickup:2b,damage:10d,crit:1b,PierceLevel:5b,Tags:["barragearrow"]}