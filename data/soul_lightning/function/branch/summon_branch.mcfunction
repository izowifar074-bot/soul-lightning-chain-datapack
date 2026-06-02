# Spawn one branch marker from the current chain marker.
# Execution context: as and at the parent chain marker.

execute store result score #parent_yaw slc.tmp run data get entity @s Rotation[0] 1
execute store result score #parent_pitch slc.tmp run data get entity @s Rotation[1] 1
scoreboard players add #chain_count slc.state 1
scoreboard players add #next_chain_id slc.state 1
summon minecraft:marker ~ ~ ~ {Tags:["slc.chain","slc.branch","slc.new_branch"]}
scoreboard players operation @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] slc.chain_id = #next_chain_id slc.state
scoreboard players set @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] slc.age 0
scoreboard players set @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] slc.max_age 5
scoreboard players operation @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] slc.depth = @s slc.depth
scoreboard players add @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] slc.depth 1
execute as @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] run function soul_lightning:branch/init_from_parent
execute as @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] at @s run function soul_lightning:branch/randomize_branch_direction
tag @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] remove slc.new_branch
