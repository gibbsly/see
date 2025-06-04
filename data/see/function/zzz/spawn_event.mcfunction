#killing marker
kill @s

#ending if no players with accepted gamemodes are within range
data modify storage see:main run set value 0
$execute positioned $(spawner_x) $(spawner_y) $(spawner_z) as @a[distance=..$(distance)] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",gamemode:$(gamemodes)}}} run data modify storage see:main run set value 1
execute if data storage see:main {run:0} run return fail

#running event
$execute positioned $(spawner_x) $(spawner_y) $(spawner_z) run setblock ~ ~ ~ $(replace_spawner_with) strict
$execute positioned $(spawner_x) $(spawner_y) $(spawner_z) run $(event_command)