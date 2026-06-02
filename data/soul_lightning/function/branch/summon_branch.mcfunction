# Spawn one branch marker from the current chain marker.
# Execution context: as and at the parent chain marker.

scoreboard players add #chain_count slc.state 1
scoreboard players add #next_chain_id slc.state 1
summon minecraft:marker ~ ~ ~ {Tags:["slc.chain","slc.branch","slc.new_branch"]}
scoreboard players operation @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] slc.chain_id = #next_chain_id slc.state
scoreboard players set @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] slc.age 0
scoreboard players set @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] slc.max_age 5
scoreboard players operation @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] slc.depth = @s slc.depth
scoreboard players add @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] slc.depth 1
execute as @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] run data modify entity @s Rotation set from entity @e[type=minecraft:marker,tag=slc.chain,sort=nearest,limit=1] Rotation
execute as @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] at @s run function soul_lightning:branch/randomize_branch_direction
tag @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] remove slc.new_branch
