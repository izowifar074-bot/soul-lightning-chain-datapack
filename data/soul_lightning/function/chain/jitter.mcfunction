# Randomly bend one chain marker before it moves.
# Execution context: as and at one chain marker.
# Jitter is relative: current Rotation + random offset.
# Yaw jitter range: -18..18 degrees.
# Pitch jitter range: -7..7 degrees, then clamped into -35..35 degrees.

execute store result score #yaw slc.tmp run data get entity @s Rotation[0] 1
execute store result score #pitch slc.tmp run data get entity @s Rotation[1] 1
execute store result score #jitter_yaw slc.tmp run random value -18..18
execute store result score #jitter_pitch slc.tmp run random value -7..7
scoreboard players operation #yaw slc.tmp += #jitter_yaw slc.tmp
scoreboard players operation #pitch slc.tmp += #jitter_pitch slc.tmp
execute if score #pitch slc.tmp matches ..-36 run scoreboard players set #pitch slc.tmp -35
execute if score #pitch slc.tmp matches 36.. run scoreboard players set #pitch slc.tmp 35
execute store result entity @s Rotation[0] float 1 run scoreboard players get #yaw slc.tmp
execute store result entity @s Rotation[1] float 1 run scoreboard players get #pitch slc.tmp
