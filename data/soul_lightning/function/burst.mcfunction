# Fire one immediate burst at the current execution position without placing a core.

kill @e[type=minecraft:marker,tag=slc.chain,distance=..128]
scoreboard players set #chain_count slc.state 0
particle minecraft:soul_fire_flame ~ ~0.25 ~ 0.80 0.22 0.80 0.0 45 force
particle minecraft:end_rod ~ ~0.35 ~ 0.45 0.18 0.45 0.02 12 force
function soul_lightning:chain/summon_sky_burst
say [Soul Lightning Chain] Fired one instant burst.
