# Count current temporary chain markers.

scoreboard players set #chain_count slc.state 0
execute as @e[type=minecraft:marker,tag=slc.chain] run scoreboard players add #chain_count slc.state 1
scoreboard players get #chain_count slc.state
