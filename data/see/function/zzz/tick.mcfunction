#running as spawned markers, if you want to have this in a general register function use the commented out command instead
execute as @e[type=marker,tag=see.event] at @s run function see:zzz/spawn_event with entity @s data
#execute if entity @s[type=marker,tag=see.event] at @s run function see:zzz/spawn_event with entity @s data