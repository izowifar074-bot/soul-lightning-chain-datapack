# Place a Soul Lightning core marker at the executing position.
# Run as a player or from an execute positioned context.

scoreboard players add #next_core_id slc.state 1
summon minecraft:marker ~ ~ ~ {Tags:["slc.core","slc.new_core"]}
scoreboard players operation @e[type=minecraft:marker,tag=slc.new_core,sort=nearest,limit=1] slc.core_id = #next_core_id slc.state
scoreboard players set @e[type=minecraft:marker,tag=slc.new_core,sort=nearest,limit=1] slc.timer 0
scoreboard players operation @e[type=minecraft:marker,tag=slc.new_core,sort=nearest,limit=1] slc.timer = #pulse_interval slc.state
tag @e[type=minecraft:marker,tag=slc.new_core,sort=nearest,limit=1] remove slc.new_core
scoreboard players set #core_count slc.state 0
execute as @e[type=minecraft:marker,tag=slc.core] run scoreboard players add #core_count slc.state 1

kill @e[type=minecraft:marker,tag=slc.chain,distance=..128]
scoreboard players set #chain_count slc.state 0
particle minecraft:soul_fire_flame ~ ~0.25 ~ 0.80 0.22 0.80 0.0 45 force
particle minecraft:end_rod ~ ~0.35 ~ 0.45 0.18 0.45 0.02 12 force
function soul_lightning:chain/summon_sky_burst

say [Soul Lightning Chain] Placed a core marker and fired an instant burst.
