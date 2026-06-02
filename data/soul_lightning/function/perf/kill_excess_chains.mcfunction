# Emergency cleanup helper for manually removing all temporary chain entities.
# This is intentionally conservative: normal limiting happens by refusing new chain spawns.

kill @e[type=minecraft:marker,tag=slc.chain]
scoreboard players set #chain_count slc.state 0
say [Soul Lightning Chain] Removed all temporary chain markers.
