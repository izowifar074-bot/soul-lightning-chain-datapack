# Soul Lightning Chain Datapack
# Remove all scoreboard objectives and temporary entities owned by this datapack.

kill @e[tag=slc.core]
kill @e[tag=slc.chain]
kill @e[tag=slc.branch]
scoreboard objectives remove slc.timer
scoreboard objectives remove slc.state
scoreboard objectives remove slc.core_id
scoreboard objectives remove slc.chain_id
scoreboard objectives remove slc.age
scoreboard objectives remove slc.max_age
scoreboard objectives remove slc.depth
scoreboard objectives remove slc.tmp

say [Soul Lightning Chain] Uninstalled stage 6 jagged chain skeleton state.
