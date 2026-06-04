# Soul Lightning Chain Datapack
# Stage 11 tick hook: count active bolts, update cores, and advance temporary lightning markers.

scoreboard players set #chain_count slc.state 0
execute as @e[type=minecraft:marker,tag=slc.chain] run scoreboard players add #chain_count slc.state 1
execute as @e[type=minecraft:marker,tag=slc.core] at @s if entity @a[distance=..128] run function soul_lightning:core/tick
execute as @e[type=minecraft:marker,tag=slc.chain] at @s run function soul_lightning:chain/tick
