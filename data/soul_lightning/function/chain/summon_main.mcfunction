# Spawn one long upward lightning trunk marker.
# Execution context: at a dispersed position around one core marker.
# Respects the global temporary chain cap.

execute if score #chain_count slc.state >= #max_chain_count slc.state run return 0
scoreboard players add #chain_count slc.state 1
scoreboard players add #next_chain_id slc.state 1
summon minecraft:marker ~ ~ ~ {Tags:["slc.chain","slc.main","slc.new_chain"]}
scoreboard players operation @e[type=minecraft:marker,tag=slc.new_chain,sort=nearest,limit=1] slc.chain_id = #next_chain_id slc.state
scoreboard players set @e[type=minecraft:marker,tag=slc.new_chain,sort=nearest,limit=1] slc.age 0
scoreboard players set @e[type=minecraft:marker,tag=slc.new_chain,sort=nearest,limit=1] slc.max_age 34
scoreboard players set @e[type=minecraft:marker,tag=slc.new_chain,sort=nearest,limit=1] slc.depth 0
execute as @e[type=minecraft:marker,tag=slc.new_chain,sort=nearest,limit=1] at @s run function soul_lightning:chain/init_random_direction
tag @e[type=minecraft:marker,tag=slc.new_chain,sort=nearest,limit=1] remove slc.new_chain
