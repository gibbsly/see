# Spawner Event Handler

This is a utility that allows you to run commands from a spawer with some configurable values

## Creating an event

At the location you wish for an event to run, you run the command `function see:place_event_spawner {distance:X,gamemodes:[],event_command:"",replace_spawner_with:""}`

### Parameters

> `distance`: the amount of blocks from the event spawner a player must be in to trigger the event

> `gamemodes`: an array of gamemodes that at least one player within the radius of the event spawner must be in to trigger the event

> `event_command`: any valid command to run when the event is triggered

> `replace_spawner_with`: the block to replace the spawner with when the event is triggered, if `spawner` is used the event spawner will remain
