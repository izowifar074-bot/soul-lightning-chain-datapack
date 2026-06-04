# Update one jagged moving chain marker with branching.
# Draw a bright short arc, maybe branch, bend, move forward, age, and self-delete.

particle minecraft:electric_spark ~ ~ ~ 0.045 0.045 0.045 0.03 7 force
particle minecraft:end_rod ~ ~ ~ 0.020 0.020 0.020 0.012 2 force
particle minecraft:soul_fire_flame ~ ~ ~ 0.025 0.025 0.025 0.0 2 normal
particle minecraft:electric_spark ^ ^ ^-0.24 0.04 0.04 0.04 0.020 5 force
particle minecraft:electric_spark ^ ^ ^-0.48 0.035 0.035 0.035 0.016 4 force
particle minecraft:electric_spark ^ ^ ^-0.72 0.030 0.030 0.030 0.012 3 force
particle minecraft:electric_spark ^ ^ ^-0.96 0.025 0.025 0.025 0.010 2 force
particle minecraft:end_rod ^ ^ ^-0.36 0.012 0.012 0.012 0.006 1 force
particle minecraft:end_rod ^ ^ ^-0.72 0.010 0.010 0.010 0.005 1 force

execute if score @s slc.depth matches 0 if score @s slc.age matches 3..82 if score #chain_count slc.state < #max_chain_count slc.state store result score #branch_roll slc.tmp run random value 0..99
execute if score @s slc.depth matches 0 if score @s slc.age matches 3..82 if score #chain_count slc.state < #max_chain_count slc.state if score #branch_roll slc.tmp <= #branch_chance slc.state run function soul_lightning:branch/summon_branch

execute if score @s slc.depth matches 0 store result score #yaw slc.tmp run data get entity @s Rotation[0] 1
execute if score @s slc.depth matches 0 store result score #pitch slc.tmp run data get entity @s Rotation[1] 1
execute if score @s slc.depth matches 0 store result score #jitter_yaw slc.tmp run random value -48..48
execute if score @s slc.depth matches 0 store result score #jitter_pitch slc.tmp run random value -18..24
execute if score @s slc.depth matches 0 run scoreboard players operation #yaw slc.tmp += #jitter_yaw slc.tmp
execute if score @s slc.depth matches 0 run scoreboard players operation #pitch slc.tmp += #jitter_pitch slc.tmp
execute if score @s slc.depth matches 0 if score #pitch slc.tmp matches ..-87 run scoreboard players set #pitch slc.tmp -86
execute if score @s slc.depth matches 0 if score #pitch slc.tmp matches -29.. run scoreboard players set #pitch slc.tmp -30
execute if score @s slc.depth matches 0 store result entity @s Rotation[0] float 1 run scoreboard players get #yaw slc.tmp
execute if score @s slc.depth matches 0 store result entity @s Rotation[1] float 1 run scoreboard players get #pitch slc.tmp

execute if score @s slc.depth matches 1.. store result score #yaw slc.tmp run data get entity @s Rotation[0] 1
execute if score @s slc.depth matches 1.. store result score #pitch slc.tmp run data get entity @s Rotation[1] 1
execute if score @s slc.depth matches 1.. store result score #jitter_yaw slc.tmp run random value -48..48
execute if score @s slc.depth matches 1.. store result score #jitter_pitch slc.tmp run random value -12..18
execute if score @s slc.depth matches 1.. run scoreboard players operation #yaw slc.tmp += #jitter_yaw slc.tmp
execute if score @s slc.depth matches 1.. run scoreboard players operation #pitch slc.tmp += #jitter_pitch slc.tmp
execute if score @s slc.depth matches 1.. if score #pitch slc.tmp matches ..-63 run scoreboard players set #pitch slc.tmp -62
execute if score @s slc.depth matches 1.. if score #pitch slc.tmp matches -11.. run scoreboard players set #pitch slc.tmp -12
execute if score @s slc.depth matches 1.. store result entity @s Rotation[0] float 1 run scoreboard players get #yaw slc.tmp
execute if score @s slc.depth matches 1.. store result entity @s Rotation[1] float 1 run scoreboard players get #pitch slc.tmp

tp @s ^ ^ ^0.96
scoreboard players add @s slc.age 1
execute if score @s slc.age >= @s slc.max_age run kill @s
