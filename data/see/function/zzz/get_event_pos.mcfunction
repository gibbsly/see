#fetching pos
data modify storage see:main Pos set from entity @s Pos
kill @s

#converting pos
data modify storage see:main pos set value {spawner_x:0d,spawner_y:0d,spawner_z:0d}
data modify storage see:main pos.spawner_x set from storage see:main Pos[0]
data modify storage see:main pos.spawner_y set from storage see:main Pos[1]
data modify storage see:main pos.spawner_z set from storage see:main Pos[2]

#writing pos
data modify block ~ ~ ~ SpawnData.entity.data merge from storage see:main pos
data modify block ~ ~ ~ SpawnPotentials[0].data.entity.data merge from storage see:main pos