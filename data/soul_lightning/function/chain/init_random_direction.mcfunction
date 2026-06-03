# Give the current chain marker a random upward direction.
# Execution context: as and at one marker tagged slc.chain.
# Yaw range: 0..359 degrees.
# Pitch range: -78..-52 degrees, which aims the chain mostly upward in Minecraft rotation.

execute store result entity @s Rotation[0] float 1 run random value 0..359
execute store result entity @s Rotation[1] float 1 run random value -78..-52
