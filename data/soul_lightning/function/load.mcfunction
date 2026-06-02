# Soul Lightning Chain Datapack
# Stage 6 load hook: initialize shared state, core management, pulse timing, moving chains, and jitter math.

scoreboard objectives add slc.timer dummy
scoreboard objectives add slc.state dummy
scoreboard objectives add slc.core_id dummy
scoreboard objectives add slc.chain_id dummy
scoreboard objectives add slc.age dummy
scoreboard objectives add slc.max_age dummy
scoreboard objectives add slc.depth dummy
scoreboard objectives add slc.tmp dummy
scoreboard players set #loaded slc.state 6
scoreboard players set #pulse_interval slc.state 6
scoreboard players add #next_core_id slc.state 0
scoreboard players add #next_chain_id slc.state 0
scoreboard players set #core_count slc.state 0
scoreboard players set #chain_count slc.state 0

say [Soul Lightning Chain] Loaded stage 6 jagged chain skeleton.
