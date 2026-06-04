# Update one core marker timer and trigger a wide bright sky burst when ready.
# Execution context: as and at one marker tagged slc.core.

scoreboard players add @s slc.timer 1
execute if score @s slc.timer >= #pulse_interval slc.state run scoreboard players set @s slc.timer 0
execute if score @s slc.timer matches 0 run particle minecraft:flash ~ ~0.35 ~ 0.0 0.0 0.0 0.0 2 force
execute if score @s slc.timer matches 0 run particle minecraft:electric_spark ~ ~0.55 ~ 0.90 0.30 0.90 0.06 42 force
execute if score @s slc.timer matches 0 run particle minecraft:end_rod ~ ~0.45 ~ 0.35 0.18 0.35 0.02 8 force
execute if score @s slc.timer matches 0 run particle minecraft:soul_fire_flame ~ ~0.25 ~ 0.55 0.16 0.55 0.0 10 normal
execute if score @s slc.timer matches 0 run scoreboard players set #chain_count slc.state 0
execute if score @s slc.timer matches 0 as @e[type=minecraft:marker,tag=slc.chain] run scoreboard players add #chain_count slc.state 1
execute if score @s slc.timer matches 0 if score #chain_count slc.state < #max_chain_count slc.state run function soul_lightning:chain/summon_sky_burst
