# Apply a left branch yaw offset.

execute store result score #branch_yaw_offset slc.tmp run random value 35..70
scoreboard players operation #yaw slc.tmp -= #branch_yaw_offset slc.tmp
