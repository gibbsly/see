# Spawner Event Handler

This is a utility that allows you to run commands from a spawer with some configurable values

## Creating an event

At the location you wish for an event to run, you run the following command:
```
function see:place_event_spawner {distance:0,gamemodes:[],event_command:"",replace_spawner_with:""}
```
### Parameters

> `distance`: the amount of blocks from the event spawner a player must be within to trigger the event
>
> `gamemodes`: an array of gamemodes that at least one player within the trigger distance of the event spawner must be within to trigger the event
>
> `event_command`: the command to run when the event is triggered
>
> `replace_spawner_with`: the block to replace the spawner with when the event is triggered, if `"spawner"` is used the event spawner will not be removed



## Optimization Note
If you are using this alongside another datapack that has a general entity registering function you may remove the ticking function from this pack and place the command below in your entity registration function 
```
execute if entity @s[type=marker,tag=see.event] at @s run function see:zzz/spawn_event with entity @s data
```
