# DWASD: The Distance-based WASD detector
DWASD is a Minecraft data pack that enables rotation-resilient, efficient local movement detection. In other words, it attempts to figure out WASD input[^1].
It improves upon some methods of local input detection by using no entities[^2], being very lightweight and not using many complicated scoreboard operations.

## Getting started
In order to get started, just download this repository and place the resulting folder (which should be named "dwasd") in your respective world's "datapacks" folder.

You can verify the installation succeeded by running the following command:
```mcfunction
reload
```
And checking if the following input is shown:
```
Initialized the DWASD data pack, version X.Y.Z
- No player tags have been removed
- Pack scoreboards have been reset
- [Click here] to disable seeing this message upon subsequent reloads
```

### Subscribing a player
As shown in the input, you may add the `dwasd.subbed` tag to a player in order to subscribe him to the detection system. At each tick, the system will give that player a list of tags which represent the output the of system.

These tags are:
- `dwasd.fwd` - Forwards movement detected
- `dwasd.lwd` - Leftwards movement detected
- `dwasd.bwd` - Backwards movement detected
- `dwasd.rwd` - Rightwards movement detected

## Examples
Subscribe a player:
```mcfunction
tag miestrode add dwasd.subbed
```
Unsubscribe a player:
```mcfunction
tag miestrode remove dwasd.subbed
```
Check system output (Ideally done in a datapack):
```mcfunction
execute if entity miestrode[tag=dwasd.fwd] run say Miestrode moved forwards!
```

## Q & A
### How does this work?
This data pack works in two steps to achieve a result that works like the following algorithm:
1. Get the player movement difference vector
2. Check if this vector is very close to a set of 4 local WASD marker coordinates.
3. If it is, mark that as a key press, based on the marker.

This of course, isn't particularly easy to implement in Minecraft, because of the distance part of things. However, we can manipulate the game to do our bidding by using the built in `distance` selector. This is done by actually setting the movement difference vector to be our basis, and then spawning the WASD markers from that.
Then, using the `distance` selector to find which markers are close to the player position.

In essence, the following steps are taken:
1. Figure out the player "movement" difference vector
   1. Get the player's position delta/motion based on a predicate
   2. Use a function tree based relative coordinate preperation system based on capping the vector.
   3. Use the relative coordinates to execute the next step
2. Spawn out four markers from the position, using local coordinates and the `execute positioned` subcommand.
3. Use the `distance` selector to find the closest markers and apply tags accordingly.

### I would like to use this data pack in my creation/video/multimedia project, what do I do?
I require only two things:
1. Make sure to follow the terms set out in my license
2. Add a clearly readable section in your project that references this project (By linking to here), alongside the proper credits next to it.

You may contact me if you must break these criteria.

[^1]: This procedure is of course not perfect as movement only gives so much data.
[^2]: Except the players it is acting on, of course.
