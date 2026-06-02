# Remove the nearest Soul Lightning core marker to the executing position.

kill @e[type=minecraft:marker,tag=slc.core,sort=nearest,limit=1]
scoreboard players set #core_count slc.state 0
execute as @e[type=minecraft:marker,tag=slc.core] run scoreboard players add #core_count slc.state 1

say [Soul Lightning Chain] Removed the nearest core marker.
