# Initialize the current new branch marker from parent rotation scratch scores.
# Execution context: as one marker tagged slc.new_branch.

execute store result entity @s Rotation[0] float 1 run scoreboard players get #parent_yaw slc.tmp
execute store result entity @s Rotation[1] float 1 run scoreboard players get #parent_pitch slc.tmp
