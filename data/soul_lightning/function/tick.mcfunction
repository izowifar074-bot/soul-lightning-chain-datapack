# Soul Lightning Chain Datapack
# Stage 7 tick hook: apply performance limits, update active core markers, and update temporary chain markers.

function soul_lightning:perf/count_chains
execute as @e[type=minecraft:marker,tag=slc.core] at @s if entity @a[distance=..64] run function soul_lightning:core/tick
execute as @e[type=minecraft:marker,tag=slc.chain] at @s run function soul_lightning:chain/tick
