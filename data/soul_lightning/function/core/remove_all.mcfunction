# Remove all Soul Lightning core marker entities.

kill @e[type=minecraft:marker,tag=slc.core]
scoreboard players set #core_count slc.state 0

say [Soul Lightning Chain] Removed all core markers.
