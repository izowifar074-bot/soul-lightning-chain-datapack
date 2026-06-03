# Give the current lightning trunk a mostly vertical upward direction.
# Minecraft pitch: negative values aim upward.
# Yaw is random, but pitch stays near vertical so the trunk shoots into the sky.

execute store result entity @s Rotation[0] float 1 run random value 0..359
execute store result entity @s Rotation[1] float 1 run random value -88..-68
