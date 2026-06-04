# Spawn one long diagonal upward lightning marker.
# This gives each burst a few non-vertical sky arcs.

execute if score #chain_count slc.state >= #max_chain_count slc.state run return 0
scoreboard players add #chain_count slc.state 1
scoreboard players add #next_chain_id slc.state 1
summon minecraft:marker ~ ~ ~ {Tags:["slc.chain","slc.main","slc.slanted","slc.new_chain"]}
scoreboard players operation @e[type=minecraft:marker,tag=slc.new_chain,sort=nearest,limit=1] slc.chain_id = #next_chain_id slc.state
scoreboard players set @e[type=minecraft:marker,tag=slc.new_chain,sort=nearest,limit=1] slc.age 0
scoreboard players set @e[type=minecraft:marker,tag=slc.new_chain,sort=nearest,limit=1] slc.max_age 64
scoreboard players set @e[type=minecraft:marker,tag=slc.new_chain,sort=nearest,limit=1] slc.depth 0
execute store result entity @e[type=minecraft:marker,tag=slc.new_chain,sort=nearest,limit=1] Rotation[0] float 1 run random value 0..359
execute store result entity @e[type=minecraft:marker,tag=slc.new_chain,sort=nearest,limit=1] Rotation[1] float 1 run random value -56..-24
tag @e[type=minecraft:marker,tag=slc.new_chain,sort=nearest,limit=1] remove slc.new_chain
