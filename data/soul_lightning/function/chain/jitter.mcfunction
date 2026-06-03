# Randomly bend one lightning trunk before it moves.
# Execution context: as and at one chain marker.
# The bend is intentionally small so the path is long and sky-reaching instead of curling into a short fire plume.

execute store result score #yaw slc.tmp run data get entity @s Rotation[0] 1
execute store result score #pitch slc.tmp run data get entity @s Rotation[1] 1
execute store result score #jitter_yaw slc.tmp run random value -7..7
execute store result score #jitter_pitch slc.tmp run random value -3..3
scoreboard players operation #yaw slc.tmp += #jitter_yaw slc.tmp
scoreboard players operation #pitch slc.tmp += #jitter_pitch slc.tmp
execute if score #pitch slc.tmp matches ..-90 run scoreboard players set #pitch slc.tmp -90
execute if score #pitch slc.tmp matches -58.. run scoreboard players set #pitch slc.tmp -58
execute store result entity @s Rotation[0] float 1 run scoreboard players get #yaw slc.tmp
execute store result entity @s Rotation[1] float 1 run scoreboard players get #pitch slc.tmp
