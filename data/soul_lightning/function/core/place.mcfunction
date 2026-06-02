# Place a Soul Lightning core marker at the executing position.
# Run as a player or from an execute positioned context.

scoreboard players add #next_core_id slc.state 1
summon minecraft:marker ~ ~ ~ {Tags:["slc.core","slc.new_core"]}
scoreboard players operation @e[type=minecraft:marker,tag=slc.new_core,sort=nearest,limit=1] slc.core_id = #next_core_id slc.state
scoreboard players set @e[type=minecraft:marker,tag=slc.new_core,sort=nearest,limit=1] slc.timer 0
tag @e[type=minecraft:marker,tag=slc.new_core,sort=nearest,limit=1] remove slc.new_core
scoreboard players set #core_count slc.state 0
execute as @e[type=minecraft:marker,tag=slc.core] run scoreboard players add #core_count slc.state 1

say [Soul Lightning Chain] Placed a core marker.
