# Soul Lightning Chain Datapack
# Stage 3 load hook: initialize shared state, core management, and pulse timing objectives.

scoreboard objectives add slc.timer dummy
scoreboard objectives add slc.state dummy
scoreboard objectives add slc.core_id dummy
scoreboard players set #loaded slc.state 3
scoreboard players set #pulse_interval slc.state 6
scoreboard players add #next_core_id slc.state 0
scoreboard players set #core_count slc.state 0

say [Soul Lightning Chain] Loaded stage 3 core pulse skeleton.
