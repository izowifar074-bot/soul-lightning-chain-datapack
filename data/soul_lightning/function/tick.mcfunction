# Soul Lightning Chain Datapack
# Stage 4 tick hook: update core markers and temporary chain markers.

execute as @e[type=minecraft:marker,tag=slc.core] at @s run function soul_lightning:core/tick
execute as @e[type=minecraft:marker,tag=slc.chain] at @s run function soul_lightning:chain/tick
