# Count Soul Lightning core marker entities.

scoreboard players set #core_count slc.state 0
execute as @e[type=minecraft:marker,tag=slc.core] run scoreboard players add #core_count slc.state 1
scoreboard players get #core_count slc.state
