# Count all active chain markers for global performance limits.

scoreboard players set #chain_count slc.state 0
execute as @e[type=minecraft:marker,tag=slc.chain] run scoreboard players add #chain_count slc.state 1
