# Add a larger relative bend to a newly spawned branch marker.
# Execution context: as and at one marker tagged slc.new_branch.
# Branch yaw offset: randomly left or right by 35..70 degrees.
# Branch pitch offset: -15..15 degrees, then clamped into -40..40 degrees.

execute store result score #yaw slc.tmp run data get entity @s Rotation[0] 1
execute store result score #pitch slc.tmp run data get entity @s Rotation[1] 1
execute store result score #branch_side slc.tmp run random value 0..1
execute if score #branch_side slc.tmp matches 0 run function soul_lightning:branch/randomize_left
execute if score #branch_side slc.tmp matches 1 run function soul_lightning:branch/randomize_right
execute store result score #branch_pitch_offset slc.tmp run random value -15..15
scoreboard players operation #pitch slc.tmp += #branch_pitch_offset slc.tmp
execute if score #pitch slc.tmp matches ..-41 run scoreboard players set #pitch slc.tmp -40
execute if score #pitch slc.tmp matches 41.. run scoreboard players set #pitch slc.tmp 40
execute store result entity @s Rotation[0] float 1 run scoreboard players get #yaw slc.tmp
execute store result entity @s Rotation[1] float 1 run scoreboard players get #pitch slc.tmp
