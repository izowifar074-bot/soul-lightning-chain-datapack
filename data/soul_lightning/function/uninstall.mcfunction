# Soul Lightning Chain Datapack
# Remove all scoreboard objectives and temporary entities owned by this datapack.

kill @e[tag=slc.core]
kill @e[tag=slc.chain]
kill @e[tag=slc.branch]
scoreboard objectives remove slc.timer
scoreboard objectives remove slc.state
scoreboard objectives remove slc.core_id

say [Soul Lightning Chain] Uninstalled stage 2 core skeleton state.
