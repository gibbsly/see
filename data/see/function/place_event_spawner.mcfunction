#call with paramaters {gamemodes:[],distance:0,event_command:"",replace_spawner_with:"<block>"}
$setblock ~ ~ ~ spawner{RequiredPlayerRange:$(distance)s,MaxSpawnDelay:20s,MinSpawnDelay:20s,SpawnCount:1s,MaxNearbyEntities:1024s,Delay:40,SpawnData:{entity:{id:"marker",Tags:[see.event],data:{event_command:"$(event_command)",distance:$(distance),gamemodes:$(gamemodes),replace_spawner_with:"$(replace_spawner_with)"}}}}
execute align xyz positioned ~0.5 ~0.5 ~0.5 summon marker run function see:zzz/get_event_pos

#data validation
return 1
$execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",gamemode:$(gamemodes)}}}
$execute if entity @s[distance=0..$(distance)] if entity @s[distance=$(distance)..32768]
$$(event_command)
$setblock ~ ~ ~ $(replace_spawner_with) strict