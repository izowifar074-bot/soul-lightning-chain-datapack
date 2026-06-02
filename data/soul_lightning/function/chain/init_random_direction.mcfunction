# Give the current chain marker a random yaw and pitch.
# Execution context: as and at one marker tagged slc.chain.
# Yaw range: 0..359 degrees.
# Pitch range: -25..25 degrees.

execute store result entity @s Rotation[0] float 1 run random value 0..359
execute store result entity @s Rotation[1] float 1 run random value -25..25
