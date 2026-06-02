# Soul Lightning Chain Datapack
# Stage 3 tick hook: update all core markers.

execute as @e[type=minecraft:marker,tag=slc.core] at @s run function soul_lightning:core/tick
