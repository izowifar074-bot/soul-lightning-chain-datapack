# Spawn one sparse diagonal upward side branch from the current lightning trunk.
# Execution context: as and at the parent chain marker.

execute store result score #parent_yaw slc.tmp run data get entity @s Rotation[0] 1
scoreboard players add #chain_count slc.state 1
scoreboard players add #next_chain_id slc.state 1
summon minecraft:marker ~ ~ ~ {Tags:["slc.chain","slc.branch","slc.new_branch"]}
scoreboard players operation @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] slc.chain_id = #next_chain_id slc.state
scoreboard players set @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] slc.age 0
scoreboard players set @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] slc.max_age 28
scoreboard players operation @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] slc.depth = @s slc.depth
scoreboard players add @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] slc.depth 1
scoreboard players operation #yaw slc.tmp = #parent_yaw slc.tmp
execute store result score #branch_side slc.tmp run random value 0..1
execute if score #branch_side slc.tmp matches 0 store result score #branch_yaw_offset slc.tmp run random value 38..104
execute if score #branch_side slc.tmp matches 0 run scoreboard players operation #yaw slc.tmp -= #branch_yaw_offset slc.tmp
execute if score #branch_side slc.tmp matches 1 store result score #branch_yaw_offset slc.tmp run random value 38..104
execute if score #branch_side slc.tmp matches 1 run scoreboard players operation #yaw slc.tmp += #branch_yaw_offset slc.tmp
execute store result score #pitch slc.tmp run random value -50..-14
execute store result entity @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] Rotation[0] float 1 run scoreboard players get #yaw slc.tmp
execute store result entity @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] Rotation[1] float 1 run scoreboard players get #pitch slc.tmp
tag @e[type=minecraft:marker,tag=slc.new_branch,sort=nearest,limit=1] remove slc.new_branch
