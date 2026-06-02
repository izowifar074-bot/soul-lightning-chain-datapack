# Soul Lightning Chain Datapack
# Remove all scoreboard objectives and temporary entities owned by this datapack.
# Stage 1 does not create entities yet; entity cleanup is included for future compatibility.

kill @e[tag=slc.core]
kill @e[tag=slc.chain]
kill @e[tag=slc.branch]
scoreboard objectives remove slc.timer
scoreboard objectives remove slc.state

say [Soul Lightning Chain] Uninstalled skeleton state.
